Name "LucidTrader"
OutFile "LucidTrader-installer.exe"
InstallDir $PROGRAMFILES\com.lucidfusionlabs\LucidTrader

Page directory
Page instfiles

Section "";

RmDir /r "$INSTDIR"

SetOutPath "$INSTDIR"
File "Debug\trader.exe"
File "Debug\*.dll"

SetOutPath "$INSTDIR\assets"
File "assets\*"

SetOutPath "$INSTDIR"
CreateDirectory "$SMPROGRAMS\com.lucidfusionlabs"
createShortCut "$SMPROGRAMS\com.lucidfusionlabs\trader.lnk" "$INSTDIR\trader.exe"

SectionEnd
 
