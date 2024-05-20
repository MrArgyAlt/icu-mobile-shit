function onCreate()
  makeLuaSprite('black', '', 0, 0)
	makeGraphic('black', 1920, 1080, '000000')
	setObjectCamera('black', 'hud')
	setProperty('black.alpha',0)
	addLuaSprite('black', false)

end
function onBeatHit()
		if curBeat == 160 then
    doTweenAlpha('ur mom', 'sky', 0, 4, 'linear')
    doTweenAlpha('lmao', 'black', 0.3, 4, 'linear')
   
	end
end