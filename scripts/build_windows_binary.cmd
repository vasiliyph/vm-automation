@echo off
@echo Building Windows binary...
cd ..
rmdir /s /q demo_cli.build demo_cli.dist vm_automation_windows.exe 2> nul
call "C:\Program Files\Python38\Scripts\nuitka.bat" --standalone demo_cli.py
move demo_cli.dist\demo_cli.exe vm_automation_windows.exe
rmdir /s /q demo_cli.build demo_cli.dist 2> nul
.\scripts\upx.exe -q -9 vm_automation_windows.exe
