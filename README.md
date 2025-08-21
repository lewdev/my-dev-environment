# my-dev-environment
This project will document what I often use to setup my development environment.

| | | |
|-|-|-|
| [how-to-git](how-to/how-to-git.md) | [how-to-sqlite](how-to/how-to-sqlite.sql) | [how-to-npp](how-to/how-to-npp.md) |


# Windows 11 Enable Right-click to go straight into "Show more options"
1. Open the Windows Terminal as an administrator
2. Copy and paste the command: 
    ```
    reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
    ````
3. Restart File Explorer process via Task Manager (or restart computer)

# Add Startup Items

Navigate to:

> %USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

Drop the following shortcuts:
1. my-hotkeys.ahk
2. firefox

# Firefox Extensions

| Extension Name                                                                        | Description                         |
|---------------------------------------------------------------------------------------|-------------------------------------|
| [Bypass Paywalls](https://github.com/iamadamdev/bypass-paywalls-chrome)               | Bypass News Sites' Paywalls |
| [Unpaywall](https://addons.mozilla.org/en-US/firefox/addon/unpaywall/)                | Legally get full text of scholarly articles as you browse. |
| [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)        | Finally, an efficient blocker. Easy on CPU and memory. |
| [Cisco Webex](https://addons.mozilla.org/en-US/firefox/addon/cisco-webex-extension/)  | Join Webex meetings using Firefox |
| [LastPass](https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager/) | Last Password you will ever need |
| [Gitpod](https://addons.mozilla.org/en-US/firefox/addon/gitpod/)                      | Describe your dev environment as code and get fully prebuilt dev environments for any GitLab, GitHub and Bitbucket project. |
| [Honey](https://addons.mozilla.org/en-US/firefox/addon/honey/)                        | Automatically find and apply coupon codes when you shop online! |
| [Video DownloadHelper](https://addons.mozilla.org/en-US/firefox/addon/video-downloadhelper/) | Download Videos from the Web |
| [Wiper](https://addons.mozilla.org/en-US/firefox/addon/wiper/)                        | Black-list websites (URLs) on Google |
| [Stylish](https://addons.mozilla.org/en-US/firefox/addon/stylish/)                    | Customize any website to your color scheme in 1 click, thousands of user styles with beautiful themes, skins & free backgrounds. |

## Additional Apps

* [IrfanView All plugins](https://www.techspot.com/downloads/472-irfanview-plugins.html)

## T-Clock
[Download T-Clock](https://github.com/White-Tiger/T-Clock)
1. Right-click Date/Time on Taskbar
2. Select "T-Clock Options"
3. Select "Time Format" tab
4. Check "Advanced clock format" and enter "ddd, m/dd\nh:nn tt"
