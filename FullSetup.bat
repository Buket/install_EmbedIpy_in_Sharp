@echo setup1 start
cd /d %~dp0
@echo start install Appication
call %~nx1setup.exe
@echo press any button to continue intall
pause

@echo start install IronPython-2.7
call %~nx1IronPython-2.7.exe
@echo press any button to continue intall

pause

if  "%processor_architecture%"=="AMD64" (
	copy ironpkg-1.0.0.py "%programfiles(x86)%\IronPython 2.7\"
	@echo change direction
	cd /d "%programfiles(x86)%\IronPython 2.7\"
	) else (
	copy ironpkg-1.0.0.py "%programfiles%\IronPython 2.7\"
	@echo change direction
	cd /d "%programfiles%\IronPython 2.7\"
	)



@echo start install Numpy\Scipy
@echo install ironpkg

ipy ironpkg-1.0.0.py --install 



@echo install Numpy\Scipy
ironpkg scipy 
@echo install coplete

pause