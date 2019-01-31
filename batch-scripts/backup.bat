@echo off
REM :: This script copies source to new backup folder with a timestamp appended
REM ::
REM :: Usage:
REM ::   backup.bat C:/folder/you/want/backup C:/location/of/backups backupprefix
REM ::
REM :: Result:
REM ::   C:/location/of/backups/backupprefix_20190131-1026
REM ::
REM :: I recommend creating a shortcut with the arguments you want and running the shortcut on startup.
REM ::   Press: [Win] + r
REM ::   Enter: shell:startup
REM ::   Paste: shortcut

:: check if all arguments are set
IF [%1] == [] GOTO ErrorExampleUsage
IF [%2] == [] GOTO ErrorExampleUsage
IF [%3] == [] GOTO ErrorExampleUsage

SET sourceFolder=%1
REM SET backupFolder=%2
REM SET folderPrefix=%3

REM :: Alternatively you can set these arguments manually, but need to change line 53
REM ::SET sourceFolder=C:/SOURCE_FOLDER
REM ::SET backupFolder=%USERPROFILE%/Documents/backup/%folderNamePrefix%_%mydate%-%mytime%
REM ::SET folderPrefix=BACKUP_FOLDER

GOTO RunBackup

:ErrorExampleUsage
ECHO -
ECHO - ERROR: Need all arguments to run.
ECHO -
ECHO - EXAMPLE USAGE: backup.bat sourceFolder backupFolder folderPrefix
ECHO -
ECHO -   @arg1 sourceFolder  The folder you want to copy
ECHO -   @arg2 backupFolder  The folder you want your backup files to be located.
ECHO -   @arg3 folderPrefix  The name you want the resulting folder to have
ECHO -
PAUSE;
GOTO:EOF;

:RunBackup
REM ::SET mydate=%date:~10,4%-%date:~4,2%-%date:~7,2% ::use if you want dashes in your date
SET mydate=%date:~10,4%%date:~4,2%%date:~7,2%
SET mytime=%time:~0,2%
if %mytime% LEQ 9 (
  SET mytime=%time:~1,1%
)
SET mytime=%mytime%%time:~3,2%

SET backupPath="%~2\%~3_%mydate%-%mytime%"
REM ::SET backupPath=%backupFolder%/%folderPrefix%_%mydate%-%mytime%

ECHO -
ECHO -------------------------------------------------------------------------------
ECHO -
IF NOT EXIST %backupPath% (
  ECHO - Creating backup folder...
  ECHO -
  MKDIR %backupPath%
  IF EXIST %backupPath% (
    ECHO - Created Backup folder:
    ECHO -   %backupPath%
    ECHO -
    ECHO - Copying %sourceFolder%
    ECHO -   to %backupPath%
    ECHO -
    REM https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/robocopy
    REM /e    Copies subdirectories. Note that this option includes empty directories.
    ROBOCOPY %sourceFolder% %backupPath% /e
    REM XCOPY is deprecated, but you can use this if you want
    REM XCOPY /s %sourceFolder% %backupPath% /e /y /q
    ECHO - Successfully backed up files to:
    ECHO -   %backupPath%
    ECHO -
  )
) ELSE (
  ECHO - Backup already exists:
  ECHO -   %backupPath%
  ECHO -
  ECHO -------------------------------------------------------------------------------
  PAUSE;
  GOTO:EOF;
)
ECHO -
ECHO -------------------------------------------------------------------------------
ECHO -
PAUSE;


