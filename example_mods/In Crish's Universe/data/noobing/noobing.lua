function onCreate()

  makeLuaSprite('noobing','noobing', 400, 300)
  setObjectCamera('noobing', 'camHUD')
  scaleObject('noobing',0.5,0.5)
  setProperty('noobing.alpha',0)
  
  addLuaSprite('noobing',true)
end
function onSongStart()
  doTweenAlpha('noobing', 'noobing', 1, 1, 'quadOut')
  doTweenX('scaleTweenX', 'noobing.scale', 1, 1, 'quadOut')
	doTweenY('scaleTweenY', 'noobing.scale', 1, 1, 'quadOut')
  runTimer('noobing-title',3)
end
function onTimerCompleted(tag, loops, loopsleft)
  if tag == 'noobing-title' then
  doTweenAlpha('noobing', 'noobing', 0, 1, 'quadOut')
  doTweenX('scaleTweenX', 'noobing.scale', 3, 1, 'quadOut')
	doTweenY('scaleTweenY', 'noobing.scale', 3, 1, 'quadOut')
  end
end