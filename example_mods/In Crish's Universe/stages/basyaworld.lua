local bgSettings = {
	['Scroll Value'] = 2
}
local coolStuff = {
  ['cool stuff'] = 3
}

function onCreate()

	makeLuaSprite('sky','basya/sky',-300, 100)
	scaleObject('sky',1.4,1.4)
	
	makeLuaSprite('clouds','basya/clouds',-300, 100)
	scaleObject('clouds',1.4,1.4)
	
	makeLuaSprite('clouds2','basya/clouds',2390, 100)
	scaleObject('clouds2',1.4,1.4)
	
	makeLuaSprite('sun','basya/sun',-300, 100)
	scaleObject('sun',1.4,1.4)
	
	makeLuaSprite('BCK7','basya/BCK7',-300, 100)
	scaleObject('BCK7',1.4,1.4)
	setScrollFactor('BCK7', 0.4, 1);
	
	makeLuaSprite('BCK6','basya/BCK6',-300, 100)
	scaleObject('BCK6',1.4,1.4)
	setScrollFactor('BCK6', 0.4, 1);
	
	makeLuaSprite('BCK5','basya/BCK5',-300, 100)
	scaleObject('BCK5',1.4,1.4)
	setScrollFactor('BCK5', 0.5, 1);
	
	makeLuaSprite('BCK4','basya/BCK4',-300, 100)
	scaleObject('BCK4',1.4,1.4)
	setScrollFactor('BCK4', 0.6, 1);
	
	makeLuaSprite('BCK3','basya/BCK3',-300, 100)
	scaleObject('BCK3',1.4,1.4)
	setScrollFactor('BCK3', 0.7, 1);
	
	makeLuaSprite('BCK2','basya/BCK2',-300, 100)
	scaleObject('BCK2',1.4,1.4)
	setScrollFactor('BCK2', 0.8, 1);
	
	makeLuaSprite('BCK1','basya/BCK1',-300, 100)
	scaleObject('BCK1',1.4,1.4)
	setScrollFactor('BCK1', 0.8, 1);
	
	makeLuaSprite('foreground','basya/foreground',-300, 100)
	scaleObject('foreground',1.4,1.4)
	
	makeLuaSprite('cool','basya/cool',-300, 100)
	scaleObject('cool',1.4,1.4)

	makeLuaSprite('cool2','basya/cool',2390, 100)
	scaleObject('cool2',1.4,1.4)
	setProperty('cool.alpha',0)
	setProperty('cool2.alpha',0)
	

	addLuaSprite('sky',false)
	addLuaSprite('sun',false)
	addLuaSprite('clouds',false)
	addLuaSprite('clouds2',false)
	addLuaSprite('BCK7',false)
	addLuaSprite('BCK6',false)
	addLuaSprite('BCK5',false)
	addLuaSprite('BCK4',false)
	addLuaSprite('BCK3',false)
	addLuaSprite('BCK2',false)
	addLuaSprite('BCK1',false)
	addLuaSprite('foreground',false)
	addLuaSprite('cool',true)
	addLuaSprite('cool2',true)
	

end
function onUpdate(elapsed)
	setProperty('clouds.x', getProperty('clouds.x') - bgSettings['Scroll Value'])
	setProperty('clouds2.x', getProperty('clouds2.x') - bgSettings['Scroll Value'])
	
	setProperty('cool.x', getProperty('cool.x') - coolStuff['cool stuff'])
	setProperty('cool2.x', getProperty('cool2.x') - coolStuff['cool stuff'])
	
	if getProperty('clouds.x') <= -2990 then
		setProperty('clouds.x', -300)
		setProperty('clouds2.x', 2390)
end
	if getProperty('cool.x') <= -2990 then
		setProperty('cool.x', -300)
		setProperty('cool2.x', 2390)
  end
end