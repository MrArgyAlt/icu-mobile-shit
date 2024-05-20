function onEvent(name, value1, value2)
	ChartingMode = getPropertyFromClass('PlayState', 'chartingMode')
	--value2 = time
	
	time = tonumber(value1); 
		if time == null then
			time = 0.5
		else
			time = time
			--value2 = time
		end  --ends if statement at line #6

		if value2 == 'red' then
			value2 = 'FF0000'
	 	elseif value2 == 'yellow' then
			value2 = 'FFF400'	 
	 	elseif value2 == 'green' then
			value2 = '2BFF00'	 
	 	elseif value2 == 'cyan' then
			value2 = '00FFEB'	 
	 	elseif value2 == 'blue' then
			value2 = '0C00FF'	 
	 	elseif value2 == 'purple' then
			value2 = '9400FF'	 
		elseif value2 == 'pink' then
			value2 = 'FF00EB'
		elseif value2 == 'black' then
			value2 = '000000'
		elseif value2 == 'grey' then
			value2 = '525252'
		elseif value2 == 'orange' then
			value2 = 'ff6600'
		else
			value2 = 'ffffff'
		end --ends if statement at line #14
--[[
	if value2 == null then
		value2 = 'ffffff'
	elseif value2 == 'red' then
		value2 = 'FF0000'
	end
]]--
		if name == 'Flash' then		
		makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,value2)
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'camHUD')
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,time,'linear')			
			if ChartingMode then
					if time == 1 then
						debugPrint('Event Triggered; Camera Flashed for ', time,' second. ', value2)
					else
						debugPrint('Event Triggered; Camera Flashed for ',time,' seconds. ', value2)
					end --ends if statement at line #47
			end --ends if statement at line #46
		end --ends if statement at line #44
	end --ends if statement at line #2