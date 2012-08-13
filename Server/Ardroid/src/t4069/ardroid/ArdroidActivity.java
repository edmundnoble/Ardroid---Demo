package t4069.ardroid;

import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;

public class ArdroidActivity extends Activity {
	private static final String TAG = "Ardroid";
	/** Called when the activity is first created. */
	boolean on = false, connected = false, reverse = false;
	int currentRPM = 0;
	SeekBar seekBar;
	TextView rpmView, activeView;
	Button activeButton, connectButton;
	UsbManager mUsbManager;
	UsbAccessory accessory;
	FileOutputStream mOutputStream;
	FileInputStream mInputStream;
	ParcelFileDescriptor fd;
	boolean mPermissionRequestPending = false;
	private static final String ACTION_USB_PERMISSION = "t4069.ardroid.USB_PERMISSION";
	PendingIntent mPermissionIntent;

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		mPermissionIntent = PendingIntent.getBroadcast(this, 0, new Intent(
				ACTION_USB_PERMISSION), 0);
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
		IntentFilter filter = new IntentFilter(ACTION_USB_PERMISSION);
		filter.addAction(UsbManager.ACTION_USB_ACCESSORY_DETACHED);
		registerReceiver(mUsbReceiver, filter);
		mUsbManager = (UsbManager) getSystemService(USB_SERVICE);
		initWidgets();
	}

	private void initWidgets() {
		seekBar = (SeekBar) findViewById(R.id.seekBar1);
		rpmView = (TextView) findViewById(R.id.textView1);
		activeView = (TextView) findViewById(R.id.textView2);
		seekBar.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
			char send = 0;

			public void onProgressChanged(SeekBar seekBar, int progress,
					boolean fromUser) {
				currentRPM = (progress % 255);
				Log.d(TAG, "RPM equals:" + currentRPM);
				reverse = (progress - 255 < 0);
				rpmView.setText("RPM: " + (progress - 255));
				send++;
				if (send % 4 == 0 && connected) {
					sendStatus();
				}
			}

			public void onStartTrackingTouch(SeekBar seekBar) {
			}

			public void onStopTrackingTouch(SeekBar seekBar) {
				if (connected)
					sendStatus();
			}

		});
		seekBar.setMax(510);
		seekBar.setProgress(255);
		connectButton = (Button) findViewById(R.id.button2);
		connectButton.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				setupAccessory();
			}
		});
		activeButton = (Button) findViewById(R.id.button1);
		activeButton.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				toggleOn();
				activeView.setText((on ? "Active" : "Inactive"));
			}
		});
	}

	protected void sendStatus() {
		if (!connected)
			return;
		try {
			mOutputStream.write(on ? 1 : 0);
			mOutputStream.write(reverse ? 1 : 0);
			mOutputStream.write(currentRPM);
		} catch (IOException ioe) {
			Toast.makeText(getApplicationContext(), "Communication failed!",
					Toast.LENGTH_SHORT).show();
		}

	}

	public void onDestroy() {
		super.onDestroy();
		unregisterReceiver(mUsbReceiver);
	}

	public void onResume() {
		super.onResume();
		accessory = null;
		mOutputStream = null;
		mInputStream = null;
		fd = null;
	}

	private void setupAccessory() {
		mPermissionIntent = PendingIntent.getBroadcast(this, 0, new Intent(
				ACTION_USB_PERMISSION), 0);
		if (connected) return;
		if (mUsbManager.getAccessoryList() == null) {
			Toast toast = Toast.makeText(getApplicationContext(),
					"No accessories detected!", Toast.LENGTH_SHORT);
			toast.show();
			Log.d(TAG, "No list of accessories!");
			return;
		}
		accessory = (UsbAccessory) mUsbManager.getAccessoryList()[0];
		mUsbManager.requestPermission(accessory, mPermissionIntent);
		while (!mUsbManager.hasPermission(accessory)) {
			synchronized (mUsbReceiver) {
				if (!mPermissionRequestPending) {
					mUsbManager.requestPermission(accessory, mPermissionIntent);
					mPermissionRequestPending = true;
				}
			}
		}
			openAccessory(accessory);
	}

	private void openAccessory(UsbAccessory accessory) {
		this.accessory = accessory;
		fd = mUsbManager.openAccessory(accessory);
		if (fd != null) {
			FileDescriptor mFileDescriptor = fd.getFileDescriptor();
			mOutputStream = new FileOutputStream(mFileDescriptor);
			mInputStream = new FileInputStream(mFileDescriptor);
			Log.d(TAG, "accessory opened");
			connected = true;
		} else {
			Log.d(TAG, "accessory open fail");
		}
	}

	private void closeAccessory() {
		if (fd != null && mOutputStream != null && mInputStream != null) {
			try {
				mInputStream.close();
				mOutputStream.close();
				fd.close();
			} catch (IOException e) {
				Log.w(TAG, "Couldn't close port!");
				return;
			}
		}
		if (on)
			toggleOn();
		seekBar.setProgress(255);
		connected = false;
		on = false;
		fd = null;
		mInputStream = null;
		mOutputStream = null;
		accessory = null;
	}

	protected void toggleOn() {
		if (!connected)
			return;
		on = !on;
		sendStatus();
	}

	private final BroadcastReceiver mUsbReceiver = new BroadcastReceiver() {
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();
			UsbAccessory accessory = intent
					.getParcelableExtra(UsbManager.EXTRA_ACCESSORY);
			if (ACTION_USB_PERMISSION.equals(action)) {
				synchronized (this) {
					if (intent.getBooleanExtra(
							UsbManager.EXTRA_PERMISSION_GRANTED, false)) {
						if (accessory != null) {
							openAccessory(accessory);
							connected = true;
						}
					} else {
						Log.d(TAG, "permission denied for accessory "
								+ accessory);
					}
				}
			} else if (UsbManager.ACTION_USB_ACCESSORY_DETACHED.equals(action)) {
				UsbAccessory mAccessory = (UsbAccessory) intent
						.getParcelableExtra(UsbManager.EXTRA_ACCESSORY);
				if (accessory != null && mAccessory.equals(accessory)) {
					closeAccessory();
				}
			}
		}
	};

	public void onConfigurationChanged(Configuration newConfig) {
		super.onConfigurationChanged(newConfig);
	}
}
