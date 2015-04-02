package course.examples.UI.MenuExample;

import android.app.Activity;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import android.view.View.OnClickListener;

public class HelloAndroidWithMenuActivity extends Activity {
	
	private static int count=0;
	private Button bt = null;
	
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		setContentView(R.layout.main);
		TextView tv = (TextView) findViewById(R.id.text_view);
		
		initButton();
		
		bt.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				// Maintain a count of user presses
				// Display count as text on the Button
				count ++;
				if(count % 2==0)
					bt.setText("even");
				else
					bt.setText("odd");
			}
		});

		// Long presses on TextView tv invoke Context Menu
		registerForContextMenu(tv);
	
	}

	void initButton(){
		bt =  (Button) findViewById(R.id.button_click);
	}
	// Create Options Menu
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.top_menu, menu);
		return true;
	}

	// Process clicks on Options Menu items
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case R.id.help:
			Toast.makeText(getApplicationContext(), "you've been helped",
					Toast.LENGTH_SHORT).show();
			return true;
		case R.id.more_help:
			Toast.makeText(getApplicationContext(), "you've been helped more",
					Toast.LENGTH_SHORT).show();
			return true;
		case R.id.even_more_help:
			return true;
		default:
			return false;
		}
	}

	// Create Context Menu
	@Override
	public void onCreateContextMenu(ContextMenu menu, View v,
			ContextMenuInfo menuInfo) {
		super.onCreateContextMenu(menu, v, menuInfo);
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.context_menu, menu);
	}

	// Process clicks on Context Menu Items
	@Override
	public boolean onContextItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case R.id.help_guide:
			Toast.makeText(getApplicationContext(), "ContextMenu Shown",
					Toast.LENGTH_SHORT).show();
			return true;
		default:
			return false;
		}
	}
}