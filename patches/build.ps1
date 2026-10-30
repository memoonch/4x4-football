param([string]$FFDec = 'C:\Program Files (x86)\FFDec\ffdec.jar')
$ErrorActionPreference = 'Stop'
$project = Split-Path $PSScriptRoot -Parent
Push-Location $project
try {
    New-Item -ItemType Directory -Force build | Out-Null
    $carSource=Get-Content 'patches/BoxCar.as' -Raw
    $menuSkin=(Get-Content 'patches/MainMenuCinematic.as.txt' -Raw) + (Get-Content 'patches/TeamMenu.as.txt' -Raw) + (Get-Content 'patches/TournamentMenu.as.txt' -Raw) + (Get-Content 'patches/MatchUI.as.txt' -Raw)
    Set-Content 'patches/BoxCar.built.as' ($carSource.Replace('      public function BoxCar()', $menuSkin + '      public function BoxCar()'))
    & java -jar $FFDec -replace '4x4 soccer.swf' 'build/base.swf' `
        alternativa.engine3d.materials.TextureMaterial 'patches/TextureMaterial.as' `
        BoxCar 'patches/BoxCar.built.as' `
        fog.as3.FogDevPreloader 'patches/FogDevPreloader.as'
    if ($LASTEXITCODE -ne 0) { throw 'SWF patch compilation failed.' }
    $ffdecLib = Join-Path (Split-Path $FFDec -Parent) 'lib'
    & java -cp "$FFDec;$ffdecLib/*" 'patches/CarSortingPatch.java' 'build/base.swf' 'build/performance-stable-base.swf'
    if ($LASTEXITCODE -ne 0) { throw 'Car sorting bytecode patch failed.' }
    & java -cp "$FFDec;$ffdecLib/*" 'patches/PerformancePatch.java' 'build/performance-stable-base.swf' 'build/menu-stable-base.swf'
    if ($LASTEXITCODE -ne 0) { throw 'Performance patch failed.' }
    & java -cp "$FFDec;$ffdecLib/*" 'patches/MainMenuPatch.java' 'build/menu-stable-base.swf' 'build/4x4-soccer.swf'
    if ($LASTEXITCODE -ne 0) { throw 'Main menu patch failed.' }
    & "$PSScriptRoot/apply-car-texture.ps1" -Target 'build/4x4-soccer.swf' -FFDec $FFDec
} finally {
    Pop-Location
}

