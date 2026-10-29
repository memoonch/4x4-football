param([string]$FFDec = 'C:\Program Files (x86)\FFDec\ffdec.jar')
$ErrorActionPreference='Stop'
$project=Split-Path $PSScriptRoot -Parent
Push-Location $project
try {
    $carSource=Get-Content 'patches/BoxCar.as' -Raw
    $menuSkin=(Get-Content 'patches/MainMenuCinematic.as.txt' -Raw) + (Get-Content 'patches/TeamMenu.as.txt' -Raw) + (Get-Content 'patches/TournamentMenu.as.txt' -Raw) + (Get-Content 'patches/MatchUI.as.txt' -Raw)
    Set-Content 'patches/BoxCar.built.as' ($carSource.Replace('      public function BoxCar()', $menuSkin + '      public function BoxCar()'))
    & java -jar $FFDec -replace 'build/stable-25.swf' 'build/steering-base.swf' BoxCar 'patches/BoxCar.built.as' fog.as3.FogDevPreloader 'patches/FogDevPreloader.as'
    if($LASTEXITCODE -ne 0){throw 'Steering compilation failed'}
    $ffdecLib=Join-Path (Split-Path $FFDec -Parent) 'lib'
    & java -cp "$FFDec;$ffdecLib/*" 'patches/PerformancePatch.java' 'build/steering-base.swf' 'build/performance-bridge-base.swf'
    if($LASTEXITCODE -ne 0){throw 'Performance patch failed'}
    $source=Get-Content 'patches/TextureMaterial.as' -Raw
    $source=$source.Replace('import flash.utils.getTimer;','import flash.utils.getTimer;'+[Environment]::NewLine+'   import flash.utils.getQualifiedClassName;')
    $bridge=Get-Content 'patches/external-renderer.as.txt' -Raw
    $source=$source.Replace('      public function get mipMapping() : int',$bridge+'      public function get mipMapping() : int')
    Set-Content 'patches/TextureMaterial.bridge.as' $source
    & java -jar $FFDec -replace 'build/performance-bridge-base.swf' 'build/bridge-base.swf' alternativa.engine3d.materials.TextureMaterial 'patches/TextureMaterial.bridge.as'
    if($LASTEXITCODE -ne 0){throw 'Bridge compilation failed'}
    $ffdecLib=Join-Path (Split-Path $FFDec -Parent) 'lib'
    & java -cp "$FFDec;$ffdecLib/*" 'patches/CameraBridgePatch.java' 'build/bridge-base.swf' 'build/menu-bridge-base.swf'
    if($LASTEXITCODE -ne 0){throw 'Camera bridge patch failed'}
    & java -cp "$FFDec;$ffdecLib/*" 'patches/MainMenuPatch.java' 'build/menu-bridge-base.swf' 'build/4x4-soccer-bridge.swf'
    if($LASTEXITCODE -ne 0){throw 'Main menu patch failed'}
} finally {Pop-Location}


