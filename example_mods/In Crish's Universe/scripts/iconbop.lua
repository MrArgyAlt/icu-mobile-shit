function onBeatHit()
    -- triggered 2 times per section
    if curBeat % 1 == 0 then
        setProperty('iconP2.angle', -5);
        doTweenAngle('iconP2', 'iconP2', 0,0.2,'cubicOut');

        setProperty('iconP1.angle', -5);
        doTweenAngle('iconP1', 'iconP1', 0,0.2,'cubicOut');
    end
    -- triggered 4 times per section
    if curBeat % 2 == 0 then
        setProperty('iconP2.angle', 5);
        doTweenAngle('iconP2', 'iconP2', 0,0.2,'cubicOut');

        setProperty('iconP1.angle', 5);
        doTweenAngle('iconP1', 'iconP1', 0,0.2,'cubicOut');
    end
    --script made by Gazozoz
end