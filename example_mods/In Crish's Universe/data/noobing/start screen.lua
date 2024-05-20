function onCreate()
  makeLuaSprite('basya_start','basya_black_start', 0, 0)
  setObjectCamera('basya_start', 'other')
  addLuaSprite('basya_start',true)
end
function onStartCountdown()
  doTweenX('scaleTweenX', 'basya_start.scale', 5, 2, 'quadOut')
	doTweenY('scaleTweenY', 'basya_start.scale', 5, 2, 'quadOut')
end