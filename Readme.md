# BatteryAlertPro

**BatteryAlertPro** is a lightweight Windows utility that plays audio alerts when your laptop starts charging, stops charging, or reaches full battery. It's designed to help prevent battery overcharging and notify users of charging status changes.

---

## 🔧 Features

- 🔊 Sound notification when charging starts or stops  
- 🔋 Alert when battery reaches full charge  
- 🪟 Runs silently in the background using PowerShell and VBScript  
- 🏃‍♂️ Easy to run manually or automatically at startup  

---

## 🔍 How It Works

BatteryAlertPro uses a PowerShell script that continuously monitors the battery's status (`Charging`, `Discharging`, `Full`) and plays `.wav` audio alerts accordingly. It runs invisibly via a VBScript launcher to avoid opening a console window.

---


## 📦 Installation Instructions

> [!Important]
> After extracting the setup ZIP, you must move the entire **`Sounds`** folder to `C:\`. The full path must be (below):

```Bash
C:\Sounds
``` 


### 1. Extract and Move

> Extract the contents of `BatteryAlertPro_Manual Setup.zip`.
> Copy or move the extracted `Sounds` folder to your `C:\` drive.

### 2. Open the Folder

> Open `C:\Sounds`.

### 3. Run the Setup

> In `C:\Sounds`, locate and open the file `_Installing (Instructions).txt`.
> Follow the steps inside to begin using BatteryAlertPro.

---

## 🚀 Add to Startup (Optional)

To automatically run BatteryAlertPro at startup:

1. Open `C:\Sounds\Add Shortcut to Startup`.
2. Copy `BatteryWatcherLauncher (Shortcut).lnk`.
3. Press `Win + R`, type `shell:startup`, and press Enter.
4. Paste the shortcut into the Startup folder.

BatteryAlertPro will now run every time you log in to Windows.

---



## ▶️ How to Launch

- Go to `C:\Sounds`.
- Double-click `BatteryWatcherLauncher.vbs`.

The utility will run in the background and play alerts based on battery activity.

---

## ❌ How to Uninstall/Remove it

1. Open `C:\Sounds`.
2. Double-click `Stop_BatteryWatcher.vbs` to stop the background watcher.
3. Delete the entire `C:\Sounds` folder.
4. If you added the program to Startup, press `Win + R`, type `shell:startup`, and delete `BatteryWatcherLauncher (Shortcut).lnk`.

For detailed steps, refer to `_Uninstalling (Instructions).txt` in `C:\Sounds`.

---



## 💡 Customization

- To change alert sounds, replace:
- `charging_on.wav`
- `charging_off.wav`
- `charge_complete.wav`

Make sure replacement files retain the same names and `.wav` format.

---

## 👤 Author

**[Lewis]**  
[Lewismwaz](https://github.com/Lewismwaz)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute this utility.

---

## 🙏 Acknowledgments

- Built using native Windows scripting tools (PowerShell and VBScript)
- Sound effects: Royalty-free or system-defaults (you may replace them)

---

## 💬 Feedback or Issues?

Feel free to [open an issue](https://github.com/Lewismwaz/BatteryAlertPro/issues) or submit a pull request if you have suggestions or improvements!
