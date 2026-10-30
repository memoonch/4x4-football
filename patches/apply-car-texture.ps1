param([string]$Target, [string]$FFDec='C:\Program Files (x86)\FFDec\ffdec.jar')
$ErrorActionPreference='Stop'
$original=$Target.Replace('.swf','.legacy-textures.swf')
$temporary=$Target.Replace('.swf','.textured.swf')
Copy-Item -LiteralPath $Target -Destination $original -Force
& java -jar $FFDec -replace $original $temporary 240 'webgl/ui/car-atlas-hd.png'
if($LASTEXITCODE -ne 0){throw 'Vehicle texture replacement failed'}
Move-Item -LiteralPath $temporary -Destination $Target -Force
