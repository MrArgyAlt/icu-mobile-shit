local allowend = false
function onCreate()
         makeLuaSprite('noobing_a', 'achievements/noobed_up', 0, 0)  --your achiviement image
         scaleObject('noobing_a', 0.75, 0.75)
         setObjectCamera('noobing_a', 'other')
         setProperty('noobing_a.alpha', 0) -- visible ooooooo dont change
         addLuaSprite('noobing_a',  true)

         makeLuaText('text_bruh', 'Noobed Up!', 200, 120, 10) -- change your title text
         setTextSize('text_bruh', '25') --text size 
         setTextColor('text_bruh', 'ffffff') --change color in hex
         setObjectCamera('text_bruh', 'other')
         setProperty('text_bruh.alpha', 0)
         addLuaText('text_bruh', true)

         makeLuaText('text2bruh', 'Beat Basya On Noobing Without 10 Misses or less', 200, 120, 40) -- change your description text
         setTextSize('text2bruh', '20') --text size 
         setTextColor('text2bruh', 'ffffff') --change color in hex
         setObjectCamera('text2bruh', 'other')
         setProperty('text2bruh.alpha', 0)
         addLuaText('text2bruh', true)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'gg' then
	allowend = true
	endSong() --  timer will end song lol
	end
end

function onEndSong()
     if not allowend and getProperty('songMisses') < 10 then 
         playSound('award', 0.75) --play sounds augh
         doTweenAlpha('sksksk', 'noobing_a', 1, 2.4, 'cubeInOut') --shows text and image yaya
         doTweenAlpha('textAlpha', 'text_bruh', 1, 2.4, 'cubeInOut')
         doTweenAlpha('text2Alpha', 'text2bruh', 1, 2.4, 'cubeInOut')
	 runTimer('gg', 5, 1) -- 5 is 5 second before it ends song
         return Function_Stop
     end
   return Function_Continue
end