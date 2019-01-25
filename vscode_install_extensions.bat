@echo off
 
SET VSCODE_PATH="C:\Program Files\Microsoft VS Code\bin\code"
echo ----------------------------------
echo  Installing VS Code Extensions...
echo ----------------------------------
call %VSCODE_PATH% --install-extension alessh.ReactSnippets
call %VSCODE_PATH% --install-extension CoenraadS.bracket-pair-colorizer
call %VSCODE_PATH% --install-extension donjayamanne.githistory
call %VSCODE_PATH% --install-extension formulahendry.auto-close-tag
call %VSCODE_PATH% --install-extension formulahendry.auto-rename-tag
call %VSCODE_PATH% --install-extension jasonnutter.search-node-modules
call %VSCODE_PATH% --install-extension oderwat.indent-rainbow
call %VSCODE_PATH% --install-extension OfHumanBondage.react-proptypes-intellisense
call %VSCODE_PATH% --install-extension vsmobile.vscode-react-native
call %VSCODE_PATH% --install-extension xabikos.ReactSnippets
echo ----------------------------------
echo  Done.
echo ----------------------------------
PAUSE;
