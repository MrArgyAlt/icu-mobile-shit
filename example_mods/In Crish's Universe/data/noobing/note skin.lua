function onCreatePost()
---- ADDING THE LLIBRARY'S ----
addHaxeLibrary('Conductor') -- for fun
addHaxeLibrary('ClientPrefs') -- for fun
addHaxeLibrary('NoteSplash') -- for hide note splashes
addHaxeLibrary('Main') -- for hide fps text
-------------------------------
runHaxeCode([[
    for(i in game.unspawnNotes){
    i.noteSplashDisabled = true;
    Main.fpsVar.visible = false;
   }
]])
if dadName == 'basya' then
oppSkin = 'NOTE_basya'
elseif dadName == 'basya-night' then
oppSkin = 'NOTE_basya'
elseif dadName == 'basya-mad' then
oppSkin = 'NOTE_basya'
elseif dadName == 'nightmare-basya' then
oppSkin = 'NOTE_basya_nightmare'
elseif dadName == 'peter' then
oppSkin = 'NOTE_basya'
elseif dadName == 'bsya' then
oppSkin = 'NOTE_basya'
end
  
  for i = 0, getProperty('opponentStrums.length')-1 do

			setPropertyFromGroup('opponentStrums', i, 'texture', oppSkin);


		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
			setPropertyFromGroup('unspawnNotes', i, 'texture', oppSkin);
			end
   end
end