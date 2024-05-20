function onUpdate(elapsed) 
    if curStep == 1535 then
        makeLuaText('text', "In the hands of a man. it's just a tool", 500, 375, 560)
        setTextSize('text', 25)
        setTextFont('text', 'Mojangles.ttf');
        addLuaText('text')
        setProperty('scoreTxt.visible', false)
        setProperty('healthBar.visible', false)
        setProperty('healthBarBG.visible', false)
        setProperty('iconP1.visible', false)
        setProperty('iconP2.visible', false)
    end
    if curStep == 1560 then
        removeLuaText('text')
    end
    if curStep == 1562 then
        makeLuaText('text', "But in the hands of the gods, it's a powerful jewel", 500, 375, 560)
        setTextSize('text', 25)
        setTextFont('text', 'Mojangles.ttf');
        addLuaText('text') 
    end
    if curStep == 1595 then
        removeLuaText('text')
    end
    if curStep == 1601 then
        makeLuaText('text', "So it knacks with his power and might", 500, 375, 560)
        setTextSize('text', 25)
        setTextFont('text', 'Mojangles.ttf');
        addLuaText('text') 
    end
    if curStep == 1623 then
        removeLuaText('text')
    end
    if curStep == 1629 then
        makeLuaText('text', "Can create destroy and bring darkness at light", 505, 375, 560)
        setTextSize('text', 25)
        setTextFont('text', 'Mojangles.ttf');
        addLuaText('text')
    end
    if curStep == 1660 then
        removeLuaText('text')
        setProperty('scoreTxt.visible', true)
        setProperty('healthBar.visible', true)
        setProperty('healthBarBG.visible', true)
        setProperty('iconP1.visible', true)
        setProperty('iconP2.visible', true)
    end
end

