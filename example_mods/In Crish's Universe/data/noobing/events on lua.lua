function onUpdate()
	if curStep == 271 then
	function onBeatHit()
    if curBeat % 1 == 0 then
        doTweenAngle('bop', 'camHUD', -1,0.5,'cubeInOut');
    end
    if curBeat % 2 == 0 then
        doTweenAngle('bop', 'camHUD', 1,0.5,'cubeInOut');
    end
end
end
end