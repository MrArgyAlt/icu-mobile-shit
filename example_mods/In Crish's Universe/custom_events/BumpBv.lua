
-----settings------
sped = 0.5 --Rapides daaah :v
valo = -30 --Cuanto Quieres que se mueva a los lados
ag = 3 --Angulo
CamZoom = 0.1 --Add Camera Zoom
-----settings------



---------------Code----------------
function onEvent(n,v1,v2)
	if n == 'BumpBv' then
triggerEvent("Add Camera Zoom",CamZoom,CamZoom)

doTweenAngle('awa', 'camHUD', 0, sped, 'sineInOut')
doTweenAngle('ewe', 'camGame', 0, sped, 'sineInOut')

setProperty('camHUD.x',valo)
setProperty('camGame.x',valo)
doTweenX('iwi', 'camHUD', 0, sped, 'sineInOut')
doTweenX('owo', 'camGame', 0, sped, 'sineInOut')

setProperty('camGame.angle', ag)
setProperty('camHUD.angle', ag)

valo = -valo
ag = -ag
end
end
---------------Code----------------