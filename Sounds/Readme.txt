*********Run It as a “Background Service” (Auto-start at Boot, No Visible Window)**********

*********Scheduled Task (runs under your user context, can be set to “Hidden” or “Run whether user is logged on or not”).*********


1. Create a Scheduled Task
Open Task Scheduler:
Press Win + R, type taskschd.msc, press Enter.

Create a new task:

In the right pane, click “Create Task…” (not “Create Basic Task”).



General tab:

Name: BatteryWatcher

Description: Plays sounds + shows popup when charging starts/stops/completes.

Check “Run whether user is logged on or not.”

Check “Run with highest privileges” (so it can subscribe to WMI events without prompts).




Triggers tab:

Click “New…”

“Begin the task”: At Startup

Click OK.



Actions tab:

Click “New…”



Action: Start a program
Program/script:

C:\Windows\System32\wscript.exe
Add arguments (replace paths if yours differ):

"C:\Sounds\BatteryWatcherLauncher.vbs"
(By using wscript.exe on the .vbs, you ensure it stays hidden.)

Click OK.



Conditions tab:
Uncheck “Start the task only if the computer is on AC power” (so it will start even on battery).

Optionally, check “Stop if the computer switches to battery power” if you don’t ever want this running on battery—but in our case it can run even on battery with almost zero CPU.



Settings tab:
Check “Allow task to be run on demand”.

(Optional) Check “If the task fails, restart every 1 minute, up to 3 times”.

Finish and enter your Windows credentials if prompted.

At this point, the task is installed. You can test it by right-clicking the new “BatteryWatcher” task and selecting “Run”. It should start your VBS → PowerShell chain, invisible, and immediately register the WMI event.
