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
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.DragEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnDragListener;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

public class ArdroidActivity extends Activity {
	private static final String TAG = "Ardroid";
	/** Called when the activity is first created. */
	boolean on = false, connected = false;
	int currentRPM = 0;
	SeekBar seekBar;
	TextView rpmView, activeView;
	Button activeButton, connectButton;
	UsbManager manager;
	UsbAccessory accessory;
ParcelFileDescriptor mFileDescriptor;
FileInputStream mInputStream;
FileOutputStream mOutputStream;

	private static final String ACTION_USB_PERMISSION = "t4069.ardroid.USB_PERMISSION";
	PendingIntent mPermissionIntent;
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		mPermissionIntent = PendingIntent.getBroadcast(this, 0,
				new Intent(ACTION_USB_PERMISSION), 0);
		IntentFilter filter = new IntentFilter(ACTION_USB_PERMISSION);
		registerReceiver(mUsbReceiver, filter);
		manager = (UsbManager) getSystemService(USB_SERVICE);
		seekBar = (SeekBar) findViewById(R.id.seekBar1);
		rpmView = (TextView) findViewById(R.id.textView1);
		activeView = (TextView) findViewById(R.id.textView2);
		seekBar.setMax(40);
		seekBar.setProgress(20);
		seekBar.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
			public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
				currentRPM = progress - 20;
				rpmView.setText(currentRPM + " ");
				if (on)
					sendSpeed(currentRPM);
			}
			public void onStartTrackingTouch(SeekBar seekBar) {
				// TODO Auto-generated method stub
				
			}

			public void onStopTrackingTouch(SeekBar seekBar) {
				// TODO Auto-generated method stub
				
			}

		});
		connectButton = (Button) findViewById(R.id.button2);
		connectButton.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				if (manager.getAccessoryList() == null) {Log.d(TAG,"No list of accessories!");return;}
				accessory = (UsbAccessory) manager.getAccessoryList()[0];
				manager.requestPermission(accessory, mPermissionIntent);
				if (connected) {
						startComm();
				    }

				}
			});
		activeButton = (Button) findViewById(R.id.button1);
		activeButton.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				sendOn();
				activeView.setText((on ? "Active" : "Inactive"));
			}
		});
	}

	byte[] sendBuf = new byte[4];

	private void sendChar(char ch) {
		if (!connected) return;
		sendBuf = new byte[2];
		Character.reverseBytes(ch);
		sendBuf[0] = (byte)(Character.reverseBytes(ch) & 0x000000ff);
		sendBuf[1] = (byte)(ch & 0x000000ff);	
		thread.run();
	}
	protected void sendOn() {
		if (!connected) return;
		on = !on;
		activeView.setText(on ? "Active" : "Inactive");
		sendChar((char)Character.CONTROL);
	}
	Thread thread;
	protected void startComm() {
	    mFileDescriptor = manager.openAccessory(accessory);
	    if (mFileDescriptor != null) {
	        FileDescriptor fd = mFileDescriptor.getFileDescriptor();
	        mInputStream = new FileInputStream(fd);
	        mOutputStream = new FileOutputStream(fd);
	        thread = new Thread(null, new Runnable() {
				public void run() {
					try {
						mOutputStream.write(sendBuf);
						mOutputStream.flush();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}}, 
				"AccessoryThread");
	        thread.start();
	    }
	}

	private void sendSpeed(int currentRPM) {
		if (!connected) return;
		sendChar((char)Character.CONNECTOR_PUNCTUATION);
sendChar((char)(Integer.reverseBytes(currentRPM) & 0xffff));
sendChar((char)((currentRPM) & 0xffff));
		thread.run();
		sendChar((char)Character.CONNECTOR_PUNCTUATION);
	}


	private final BroadcastReceiver mUsbReceiver = new BroadcastReceiver() {
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();
			if (ACTION_USB_PERMISSION.equals(action)) {
				synchronized (this) {
					if (intent.getBooleanExtra(
							UsbManager.EXTRA_PERMISSION_GRANTED, false)) {
						if (accessory != null) {
								connected = true;
					    }
					}
					 else {
						Log.d(TAG, "permission denied for accessory "
								+ accessory);
					 }
				}
			}
		}
	};
}
