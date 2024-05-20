function onCreate()

	setPropertyFromClass('ClientPrefs','timeBarType','Disabled')

	makeLuaSprite('sky','basya_FC/sky',-300, 100)
	scaleObject('sky',0.5,0.5)
	
	makeLuaSprite('sun','basya_FC/sun',-300,100)
	scaleObject('sun',0.5,0.5)
	
-- FRONT 1

	makeLuaSprite('FRONT1_BCK3','basya_FC/FRONT1_BCK3',-300, 100)
	scaleObject('FRONT1_BCK3',0.5,0.5)
	
	makeLuaSprite('FRONT1_BCK2','basya_FC/FRONT1_BCK2',-300, 100)
	scaleObject('FRONT1_BCK2',0.5,0.5)
	
	makeLuaSprite('FRONT1_BCK1','basya_FC/FRONT1_BCK1',-300, 100)
	scaleObject('FRONT1_BCK1',0.5,0.5)
	
	makeLuaSprite('front1','basya_FC/front1',-300,100)
	scaleObject('front1',0.5,0.5)
	
-- END OF FRONT 1

-- FRONT 2

  makeLuaSprite('FRONT2_BCK3','basya_FC/FRONT2_BCK3',-300, 100)
  scaleObject('FRONT2_BCK3',0.5,0.5)
	
	makeLuaSprite('FRONT2_BCK2','basya_FC/FRONT2_BCK2',-300, 100)
	scaleObject('FRONT2_BCK2',0.5,0.5)
	
	makeLuaSprite('FRONT2_BCK1','basya_FC/FRONT2_BCK1',-300, 100)
	scaleObject('FRONT2_BCK1',0.5,0.5)
	
	makeLuaSprite('front2','basya_FC/front2',-300,100)
	scaleObject('front2',0.5,0.5)
	
	makeAnimatedLuaSprite('rain','basya_FC/rain', -300, -500)addAnimationByPrefix('rain','rain','rain tho',60,true)
	
-- END OF FRONT 2

  makeLuaSprite('lineal','basya_FC/lineal',-300,100)
  scaleObject('lineal',0.5,0.5)

	addLuaSprite('sky',false)
	addLuaSprite('sun',false)
	addLuaSprite('FRONT1_BCK3',false)
	addLuaSprite('FRONT2_BCK3',false)
	addLuaSprite('FRONT1_BCK2',false)
	addLuaSprite('FRONT2_BCK2',false)
	addLuaSprite('FRONT1_BCK1',false)
	addLuaSprite('FRONT2_BCK1',false)
	addLuaSprite('front1',false)
	addLuaSprite('front2',false)
	addLuaSprite('rain',true)
	addLuaSprite('lineal',true)
	
	close(true)
	
end