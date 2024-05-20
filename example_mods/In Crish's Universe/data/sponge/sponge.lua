function onCreate()
  makeLuaSprite('sponge','sponge', 424, 300)
  setObjectCamera('sponge', 'camHUD')
  setProperty('sponge.alpha',0)
  scaleObject('sponge',0.5,0.5)
  addLuaSprite('sponge',true)
end
function onSongStart()
  doTweenAlpha('sponge', 'sponge', 1, 1, 'quadOut')
  doTweenX('scaleTweenX', 'sponge.scale', 1, 1, 'quadOut')
	doTweenY('scaleTweenY', 'sponge.scale', 1, 1, 'quadOut')
  runTimer('sponge-title',3)
end
function onTimerCompleted(tag, loops, loopsleft)
  if tag == 'sponge-title' then
  doTweenAlpha('sponge', 'sponge', 0, 1, 'quadOut')
  doTweenX('scaleTweenX', 'sponge.scale', 3, 1, 'quadOut')
	doTweenY('scaleTweenY', 'sponge.scale', 3, 1, 'quadOut')
  end
end