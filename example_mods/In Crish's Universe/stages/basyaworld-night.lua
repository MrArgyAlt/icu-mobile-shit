local bgSettings = {
	['Scroll Value'] = 0.13
}


t = 0
function onCreate()

	setPropertyFromClass('ClientPrefs','timeBarType','Disabled')

	makeLuaSprite('sky','sky_night',-300, 50)
	scaleObject('sky',1.5,1.5)
	
	makeLuaSprite('stars','stars',-300,50)
	scaleObject('stars',1.5,1.5)
	
	makeLuaSprite('moon','moon',-300, 50)
	scaleObject('moon',1.5,1.5)
	
	makeLuaSprite('bg','bg_night',-300, 50)
	scaleObject('bg',1.5,1.5)
	
	makeLuaSprite('lights-h','lights_home',-300,50)
	scaleObject('lights-h',1.5,1.5)
	setBlendMode('lights-h','add')

	makeLuaSprite('light-shader','light_white',-300, 50)
	scaleObject('light-shader',1.5,1.5)
	
	

	addLuaSprite('sky',false)
	addLuaSprite('moon',false)
	addLuaSprite('stars',false)
	addLuaSprite('bg',false)
	addLuaSprite('light-shader',true)
	addLuaSprite('lights-h',true)
	

end
function onTimerCompleted(t,l,ll)



if t == 'tick' then
onAnimTick()
end
function onAnimTick()

t = t + 1


setProperty('stars.alpha',1-(0.1*(t%2)))
end
end