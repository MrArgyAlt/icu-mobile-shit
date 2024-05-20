local bgSettings = {
	['Scroll Value'] = 0.13
}

function onCreate()

	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Disabled')

	makeLuaSprite('sky','basya/sky',-300, 100)

	scaleObject('sky',1.5,1.5)

	
	makeLuaSprite('sun','basya/sun',-300, 100)
	setProperty('sun.alpha', 0.9)
	scaleObject('sun',1.5,1.5)
	
	makeLuaSprite('back','basya/back',-300, 100)
	scaleObject('back',1.5,1.5)
	setScrollFactor('back', 0.8, 0.8);
	
	makeAnimatedLuaSprite('stage1','basya/stage-animated1', -300, 70)
	scaleObject('stage1',1.5,1.5)
	setScrollFactor('stage1', 0.9, 0.8);
	
	makeAnimatedLuaSprite('stage2','basya/stage-animated2', -300, 50)
	scaleObject('stage2',1.5,1.5)
	
	addAnimationByPrefix('stage1','basya/stage-animated1','anim',15,true)

	addAnimationByPrefix('stage2','basya/stage-animated2','anim',15,true)
	
	addAnimationByPrefix('stage1','stage-animated1','anim',15,true)
	addAnimationByPrefix('stage2','stage-animated2','anim',15,true)
	
	makeLuaSprite('white', '', -300, 100);

	makeGraphic('white',1920,1080,'FFFFFF')

	scaleObject('white',1.5,1.5)

if not lowQuality then

makeLuaSprite('light-shader','light',-300, 100)

	scaleObject('light-shader',2.5,2.5)

	setProperty('light-shader.alpha',0.5)
	
end

	addLuaSprite('sky',false)
	addLuaSprite('sun',false)
	addLuaSprite('back',false)
	addLuaSprite('stage1',false)
	addLuaSprite('stage2',false)
	addLuaSprite('light-shader',true)
	addLuaSprite('white',false)
end
function onUpdate(elapsed)
	setProperty('sky.x', getProperty('sky.x') - bgSettings['Scroll Value'])
	setProperty('sky.x', getProperty('sky.x') - bgSettings['Scroll Value'])
	if getProperty('sky.x') <= -1000 then
		setProperty('sky.x', -300)
		setProperty('sky2.x', 500)
	end
end