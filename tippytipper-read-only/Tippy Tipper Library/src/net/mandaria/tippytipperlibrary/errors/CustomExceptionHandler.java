/*
 *	Tippy Tipper: mobile app to calculate tips
 *  Copyright (C) 2013 Bryan Denny
 *  
 *  This file is part of "Tippy Tipper"
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

package net.mandaria.tippytipperlibrary.errors;

import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;

import net.mandaria.tippytipperlibrary.R;
import net.mandaria.tippytipperlibrary.activities.Settings;
import net.mandaria.tippytipperlibrary.tasks.SendExceptionEmailTask;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;

public class CustomExceptionHandler implements UncaughtExceptionHandler
{

	private static String TAG = "RadioReddit";

	private UncaughtExceptionHandler defaultUEH;

	private String url;
	private Context context;

	/*
	 * if any of the parameters are null, the respective functionality will not be used
	 */
	public CustomExceptionHandler(Context context)
	{
		this.context = context;
		this.url = "http://www.bryandenny.com/software/BugReport.aspx";
		this.defaultUEH = Thread.getDefaultUncaughtExceptionHandler();
	}

	public void sendEmail(Throwable e)
	{
		Log.i(TAG, "Exception caught, preparing email");
		// Stacktrace
		final Writer result = new StringWriter();
		final PrintWriter printWriter = new PrintWriter(result);
		e.printStackTrace(printWriter);
		String stacktrace = result.toString();
		printWriter.close();
		// Log.i(TAG, "StackTrace done");
		// Application
		String appName = context.getString(R.string.app_name);
		String version = "";
		try
		{
			version = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
		}
		catch(NameNotFoundException ex)
		{

		}

		String application = appName + " " + version;
		// Log.i(TAG, "Application done");
		// Debug
		// TODO: can combine this with email feedback intent
		String debug = "\n\n\n\n\n";
		debug += context.getString(R.string.email_using_custom_rom) + "\n";
		debug += "--------------------\n";
		debug += context.getString(R.string.email_do_not_edit_message) + "\n\n";
		debug += "BRAND: " + Build.BRAND + "\n";
		debug += "CPU_ABI: " + Build.CPU_ABI + "\n";
		debug += "DEVICE: " + Build.DEVICE + "\n";
		debug += "DISPLAY: " + Build.DISPLAY + "\n";
		debug += "FINGERPRINT: " + Build.FINGERPRINT + "\n";
		debug += "HOST: " + Build.HOST + "\n";
		debug += "ID: " + Build.ID + "\n";
		debug += "MANUFACTURER: " + Build.MANUFACTURER + "\n";
		debug += "MODEL: " + Build.MODEL + "\n";
		debug += "PRODUCT: " + Build.PRODUCT + "\n";
		debug += "TAGS: " + Build.TAGS + "\n";
		debug += "TIME: " + Build.TIME + "\n";
		debug += "TYPE: " + Build.TYPE + "\n";
		debug += "USER: " + Build.USER + "\n";
		debug += "VERSION.CODENAME: " + Build.VERSION.CODENAME + "\n";
		debug += "VERSION.INCREMENTAL: " + Build.VERSION.INCREMENTAL + "\n";
		debug += "VERSION.RELEASE: " + Build.VERSION.RELEASE + "\n";
		debug += "VERSION.SDK: " + Build.VERSION.SDK + "\n";
		debug += "VERSION.SDK_INT: " + Build.VERSION.SDK_INT + "\n";
		debug += "Total Internal Memory: " + getTotalInternalMemorySize() + "\n";
		debug += "Available Internal Memory: " + getAvailableInternalMemorySize() + "\n";
		// Log.i(TAG, "Debug done");

		if(url != null)
		{
			new SendExceptionEmailTask(context, stacktrace, debug, application).execute();
			
			Log.i(TAG, "Debug email sent to developer");
		}
	}

	public void uncaughtException(Thread t, Throwable e)
	{
		try
		{
			boolean enableErrorLogging = Settings.getEnableErrorLogging(context);
			if(enableErrorLogging)
			{
				sendEmail(e);
			}
		}
		catch(Exception ex)
		{
			defaultUEH.uncaughtException(t, ex);
		}

		defaultUEH.uncaughtException(t, e);
		// Log.i(TAG, "Default UEH done");
	}

	public long getAvailableInternalMemorySize()
	{
		File path = Environment.getDataDirectory();
		StatFs stat = new StatFs(path.getPath());
		long blockSize = stat.getBlockSize();
		long availableBlocks = stat.getAvailableBlocks();
		return availableBlocks * blockSize;
	}

	public long getTotalInternalMemorySize()
	{
		File path = Environment.getDataDirectory();
		StatFs stat = new StatFs(path.getPath());
		long blockSize = stat.getBlockSize();
		long totalBlocks = stat.getBlockCount();
		return totalBlocks * blockSize;
	}
}
