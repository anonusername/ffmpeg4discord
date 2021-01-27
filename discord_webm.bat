Set filename=%1
For %%A in ("%filename%") do (
    Set Folder=%%~dpA
    Set Name=%%~nxA
)

Set _start_h=%Name:~0,2%
Set _start_m=%Name:~2,2%
Set _start_s=%Name:~4,2%

Set _end_h=%Name:~7,2%
Set _end_m=%Name:~9,2%
Set _end_s=%Name:~11,2%

python discord.py %Folder% %Name% %filename% vp9

pause 10