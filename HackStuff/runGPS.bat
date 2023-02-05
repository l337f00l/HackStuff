@echo off

if exist FluxBaserom.dsc attrib -h & if exist FluxBaserom.extmod attrib -h & if exist FluxBaserom.mw2 attrib -h & if exist FluxBaserom.mwt attrib -h & if exist FluxBaserom.s16 attrib -h & if exist FluxBaserom.ssc attrib -h

set ROMFILE="..\FluxBaserom.smc"

cd .\Programs and Custom ASM\
.\gps.exe -l "gps_list.txt" -s "GPSroutines/" %ROMFILE%

if exist "..\FluxBaserom.dsc" (
  attrib +h "..\FluxBaserom.dsc"
)

if exist "..\FluxBaserom.extmod" (
  attrib +h "..\FluxBaserom.extmod"
)

if exist "..\FluxBaserom.mw2" (
  attrib +h "..\FluxBaserom.mw2"
)

if exist "..\FluxBaserom.mwt" (
  attrib +h "..\FluxBaserom.mwt"
)

if exist "..\FluxBaserom.s16" (
  attrib +h "..\FluxBaserom.s16"
)

if exist "..\FluxBaserom.ssc" (
  attrib +h "..\FluxBaserom.ssc"
)

if exist "..\sysLMRestore" (
  attrib +h "..\sysLMRestore"
)

if exist ".\Programs and Custom ASM\asar.exe" (
  attrib +h ".\Programs and Custom ASM\asar.exe"
)

if exist "asar.dll" (
  attrib +h "asar.dll"
)

if exist "defines.asm " (
  attrib +h "defines.asm"
)

if exist "gps.exe" (
  attrib +h "gps.exe"
)

if exist "GPSroutines" (
  attrib +h "GPSroutines"
)

if exist "main.asm" (
  attrib +h "main.asm"
)

if exist "pixi.exe" (
  attrib +h "pixi.exe"
)

if exist "sprites_pixi_basecode" (
  attrib +h "sprites_pixi_basecode"
)

if exist "SSPDef" (
  attrib +h "SSPDef"
)

if exist ".\UberASM\asm" (
  attrib +h ".\UberASM\asm"
)

if exist ".\UberASM\asar.dll" (
  attrib +h ".\UberASM\asar.dll"
)

if exist ".\UberASM\OtherUberASMStuff" (
  attrib +h ".\UberASM\OtherUberASMStuff"
)

if exist ".\UberASM\retry_config" (
  attrib +h ".\UberASM\retry_config"
)

if exist ".\UberASM\UberASMreadmelibrary.txt" (
  attrib +h ".\UberASM\UberASMreadmelibrary.txt"
)

if exist ".\UberASM\UberASMreadme.txt" (
  attrib +h ".\UberASM\UberASMreadme.txt"
)

if exist ".\UberASM\UberASMTool.exe" (
  attrib +h ".\UberASM\UberASMTool.exe"
)

if exist ".\UberASM\UberASMTool.pdb" (
  attrib +h ".\UberASM\UberASMTool.pdb"
)


@pause