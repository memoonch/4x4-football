param([string]$FFDec = 'C:\Program Files (x86)\FFDec\ffdec.jar')
$ErrorActionPreference='Stop'
$project=Split-Path $PSScriptRoot -Parent
Push-Location $project
try {
    $source=Get-Content 'patches/TextureMaterial.as' -Raw
    $source=$source.Replace('import flash.utils.getTimer;','import flash.utils.getTimer;'+[Environment]::NewLine+'   import flash.utils.getQualifiedClassName;')
    $bridge=Get-Content 'patches/external-renderer.as.txt' -Raw
    $source=$source.Replace('      public function get mipMapping() : int',$bridge+'      public function get mipMapping() : int')
    Set-Content 'patches/TextureMaterial.bridge.as' $source
    & java -jar $FFDec -replace 'build/stable-25.swf' 'build/bridge-base.swf' alternativa.engine3d.materials.TextureMaterial 'patches/TextureMaterial.bridge.as'
    if($LASTEXITCODE -ne 0){throw 'Bridge compilation failed'}
    $ffdecLib=Join-Path (Split-Path $FFDec -Parent) 'lib'
    & java -cp "$FFDec;$ffdecLib/*" 'patches/CameraBridgePatch.java' 'build/bridge-base.swf' 'build/4x4-soccer-bridge.swf'
    if($LASTEXITCODE -ne 0){throw 'Camera bridge patch failed'}
} finally {Pop-Location}
