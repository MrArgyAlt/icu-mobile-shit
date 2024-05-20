function onCreate()
  
  precacheImage('peter-mad')
  
  makeLuaSprite('sky_gray', 'peter/p_sky_gray', -300,-175)
	setScrollFactor('sky_gray', 0.1,0.1)
	addLuaSprite('sky_gray')

	makeLuaSprite('sky', 'peter/p_sky', -300,-175)
	setScrollFactor('sky', 0.1,0.1)
	addLuaSprite('sky')

	makeLuaSprite('sun','peter/p_sun',-400,-150)
	setScrollFactor('sun', 0.15, 0.15)
	addLuaSprite('sun')

	makeLuaSprite('clouds','peter/p_clouds',-300,-150)
	setScrollFactor('clouds', 0.25, 0.25)
	addLuaSprite('clouds')

	makeLuaSprite('mountains','peter/p_bg2', -800,-400)
	setScrollFactor('mountains', 0.3, 0.3)
	addLuaSprite('mountains')

	makeLuaSprite('treeshit','peter/p_bg1', -750,-400)
	setScrollFactor('treeshit', 0.37, 0.37)
	addLuaSprite('treeshit')

	makeLuaSprite('hugeshit','peter/p_foreground1', -800,-295)
	addLuaSprite('hugeshit')
	
	makeLuaSprite('cover','peter/p_foreground2', -650,-175)
	setScrollFactor('cover', 0.95, 0.2)
	scaleObject('cover', 2.75, 2.75)
	addLuaSprite('cover', true)

	close(true);
end
--[[
function onUpdate()
	if songName == 'x-mouth' then
		if curBeat == 160 then
    doTweenAlpha('ur mom', 'sky', 0, 4, 'linear')
    end
	end
end
--]]
