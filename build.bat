@ECHO OFF
SETLOCAL  enableextensions enabledelayedexpansion

set APP_TEMP_PATH=%TEMP%\devpacker-convert
if exist "%APP_TEMP_PATH%" goto complete_build

:find_version
echo "Searching for version of the box..."
for /f "delims=^" %%i in ('vagrant box list') do (
	for /f "tokens=1,2,3" %%a in ("%%i") do (
	   if "%%a" == "MekDrop/ImpressCMS-DevBox" if "%%b" == "(virtualbox," (
		set found_version=%%c
		goto found_version
	   )
	) 
)
goto not_found_version

:not_found_version
echo "Adding vagrant box..."
vagrant box add MekDrop/ImpressCMS-DevBox --provider virtualbox
goto find_version

:found_version
set found_version=!found_version:~0,-1!
echo Found version: %found_version%

mkdir %APP_TEMP_PATH%
mkdir %APP_TEMP_PATH%\new
mkdir %APP_TEMP_PATH%\new\"Virtual Hard Disks"
mkdir %APP_TEMP_PATH%\new\"Virtual Machines"
mkdir %APP_TEMP_PATH%\new\Snapshots
copy box-data\hyperv\"Virtual Machines"\* %APP_TEMP_PATH%\new\"Virtual Machines"\
copy box-data\hyperv\metadata.json %APP_TEMP_PATH%\new\metadata.json
pushd 		
	cd %APP_TEMP_PATH%
	
	echo "Repacking vagrant box..."
	vagrant box repackage MekDrop/ImpressCMS-DevBox virtualbox %found_version%
	
	echo "Uncompressing box..."
	bsdtar -xzvf package.box

	echo "Converting disk(s)..."
	for %%i in (*.vmdk) do (		
		vboxmanage clonehd %%i app.vhd --format VHD
	)

	move *.vhd "new/Virtual Hard Disks"
	cd new

	echo "Compressing box..."
	bsdtar -zcvf ../app.box metadata.json "Virtual Hard Disks" "Virtual Machines" Snapshots

	cd ..
	echo "Adding created box to vagrant..."
	vagrant box add ImpressCMSDevBoxTmp app.box

	echo "Creating temp box in hyper-v..."
	mkdir tmp_box
	cd tmp_box
	vagrant init ImpressCMSDevBoxTmp
	vagrant up --provider hyperv

	echo Don't worry everything is ok!
	echo Now You need to login manualy to created box in Hyper-V Manager and run this command:
	echo "sudo source <(curl -s http://bit.ly/fix-hyperv)"

	vagrant box remove ImpressCMSDevBoxTmp
popd
goto end

:complete_build

goto end

:end
ENDLOCAL