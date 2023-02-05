@echo off

if exist "FluxBaserom.s16" attrib -h

set ROMFILE="..\FluxBaserom.smc"
set LISTFILE="Programs and Custom ASM\pixi_list.txt"

cd .\Programs and Custom ASM\
.\pixi.exe -sp sprites/main/ -g sprites/generators/ -a sprites_pixi_basecode/ -c sprites/cluster/ -sh sprites/shooters/ -l %LISTFILE% %ROMFILE% 

@pause