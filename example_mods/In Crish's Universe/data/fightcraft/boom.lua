function onCreate()
  precacheSound('thunder_2')
  runTimer('boomFuckin',15)
end
function onTimerCompleted(tag, loops, loopsleft)

  if tag == 'boomFuckin' then
      playSound('thunder_2', 0.5)
        makeLuaSprite('boom', '', 0, 0);
        makeGraphic('boom',1280,720,'ffffff')
        addLuaSprite('boom', true)
        setBlendMode('boom','add')
	      setLuaSpriteScrollFactor('boom',0,0)
	      setProperty('boom.scale.x',2)
	      setProperty('boom.scale.y',2)
	      setProperty('boom.alpha',0)
		setProperty('boom.alpha',0.3)
		doTweenAlpha('bm','boom',0,2.1,'linear')
		runTimer('boomFuckin',15)
	end
end