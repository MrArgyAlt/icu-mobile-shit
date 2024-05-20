function onCreate()

  makeLuaSprite('fightcraft','fightcraft', 450, 300)

  setObjectCamera('fightcraft', 'camHUD')
  setProperty('fightcraft.alpha',0)
  scaleObject('fightcraft',0.3,0.3)
  
  addLuaSprite('fightcraft',true)
end
function onSongStart()
  doTweenAlpha('fightcraft', 'fightcraft', 1, 1, 'quadOut')
  doTweenX('scaleTweenX', 'fightcraft.scale', 0.8, 0.8, 'quadOut')
	doTweenY('scaleTweenY', 'fightcraft.scale', 0.8, 0.8, 'quadOut')
  runTimer('fightcraft-title',3)
end
function onTimerCompleted(tag, loops, loopsleft)
  if tag == 'fightcraft-title' then
  doTweenAlpha('fightcraft', 'fightcraft', 0, 1, 'quadOut')
  doTweenX('scaleTweenX', 'fightcraft.scale', 3, 1, 'quadOut')
	doTweenY('scaleTweenY', 'fightcraft.scale', 3, 1, 'quadOut')
  end
end