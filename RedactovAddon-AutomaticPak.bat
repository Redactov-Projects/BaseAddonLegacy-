@echo off

set PROJECT_PATH=%~dp0
set MOD_PATH = "%PROJECT_PATH%\Saved\Cooked\WindowsNoEditor"

echo "%PROJECT_PATH%\Saved\Cooked\WindowsNoEditor\Engine"
rmdir /s /q "%PROJECT_PATH%\Saved\Cooked\WindowsNoEditor\Engine"
echo "%PROJECT_PATH%\Saved\Cooked\WindowsNoEditor\BaseAddonLegacy\Metadata"
rmdir /s /q "%PROJECT_PATH%\Saved\Cooked\WindowsNoEditor\BaseAddonLegacy\Metadata"
echo "%PROJECT_PATH%\Saved\Cooked\WindowsNoEditor\BaseAddonLegacy\AssetRegistry.bin"
del /q "%PROJECT_PATH%\Saved\Cooked\WindowsNoEditor\BaseAddonLegacy\AssetRegistry.bin"

ren "%PROJECT_PATH%\Saved\Cooked\WindowsNoEditor\BaseAddonLegacy" "BrickRigs"

ren "%PROJECT_PATH%\Saved\Cooked\WindowsNoEditor" "%~2"

%~1 "%PROJECT_PATH%\Saved\Cooked\%~2" -Create="%PROJECT_PATH%\Saved\Cooked\%~2" -compress


move "%PROJECT_PATH%\Saved\Cooked\%~2.pak" "%PROJECT_PATH%\Compiled\%~2.pak"
