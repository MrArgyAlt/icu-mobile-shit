function onCreate()
  
  precacheSound('rain')
	

	--THE TOP BAR
	makeLuaSprite('UpperBar', 'empty', 0, 0)
	makeGraphic('UpperBar', 1280, 120, '000000')
	setObjectCamera('UpperBar', 'hud')
	addLuaSprite('UpperBar', false)


	--THE BOTTOM BAR
	makeLuaSprite('LowerBar', 'empty', 0, 600)
	makeGraphic('LowerBar', 1280, 120, '000000')
	setObjectCamera('LowerBar', 'hud')
	addLuaSprite('LowerBar', false)
	
	makeLuaSprite('black', '', 0, 0)
	makeGraphic('black', 1920, 1080, '000000')
	setObjectCamera('black', 'hud')
	addLuaSprite('black', false)
	
	makeLuaSprite('vignette', 'vignette', 0, 0)
	setObjectCamera('vignette', 'hud')
	addLuaSprite('vignette', false)


end
function onStartCountdown()
  playSound('rain', 0.6)
end
function onUpdatePost()
if curBeat == 16 then
  setProperty('camZooming',true)
  doTweenAlpha('black', 'black', 0, 5, 'linear')
end
if curBeat == 292 then
  setProperty('camZooming',true)
  end
end
function onUpdate()
  if curBeat == 256 then
  doTweenAlpha('black', 'black', 1, 1, 'linear')
end
if curBeat == 328 then
  setProperty('black.alpha',0)
  end
end