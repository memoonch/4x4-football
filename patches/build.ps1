param([string]$FFDec = 'C:\Program Files (x86)\FFDec\ffdec.jar')
$ErrorActionPreference = 'Stop'
$project = Split-Path $PSScriptRoot -Parent
Push-Location $project
try {
    New-Item -ItemType Directory -Force build | Out-Null
    & java -jar $FFDec -replace '4x4 soccer.swf' 'build/base.swf' `
        alternativa.engine3d.materials.TextureMaterial 'patches/TextureMaterial.as' `
        fog.as3.FogDevPreloader 'patches/FogDevPreloader.as'
    if ($LASTEXITCODE -ne 0) { throw 'SWF patch compilation failed.' }
    $ffdecLib = Join-Path (Split-Path $FFDec -Parent) 'lib'
    & java -cp "$FFDec;$ffdecLib/*" 'patches/CarSortingPatch.java' 'build/base.swf' 'build/4x4-soccer.swf'
    if ($LASTEXITCODE -ne 0) { throw 'Car sorting bytecode patch failed.' }
} finally {
    Pop-Location
}
