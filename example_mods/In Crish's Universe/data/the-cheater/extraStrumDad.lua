local created = false
local skin = 'default'
local defaultX = {}
local defaultY = {}

function onCreate()
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
	   setPropertyFromClass('ClientPrefs', 'middleScroll', false)
	end
end

function onCreatePost()
	addHaxeLibrary('FlxTypedGroup','flixel.group')
	-- if version >= '0.7' then
	-- 	addHaxeLibrary('StrumNote','objects')
	-- 	runHaxeCode(
	-- 	[[
	-- 		var newNotes = new FlxTypedGroup();
	-- 		for(strum in 0...game.opponentStrums.length){
	-- 			var curStrum = game.opponentStrums.members[strum];
	-- 			var object = new StrumNote(-150,curStrum.y,strum,0);
				
	-- 			object.animation.play('static');
	-- 			game.modchartSprites.set('strumNotesExtra'+strum,object);
	-- 			newNotes.add(object);
	-- 		}
	-- 		game.noteGroup.members.insert(0,newNotes);
	-- 		return;
	-- 	]]
	-- )
	-- else
	-- 	addHaxeLibrary('StrumNote','')
	-- 	runHaxeCode(
	-- 		[[
	-- 			var newNotes = new FlxTypedGroup();
				
	-- 			for(strum in 0...game.opponentStrums.length){
	-- 				var curStrum = game.opponentStrums.members[strum];
	-- 				var object = new StrumNote(-150,curStrum.y,strum,0);
	-- 				object.cameras = [game.camHUD];
	-- 				object.animation.play('static');
	-- 				game.modchartSprites.set('strumNotesExtra'+strum,object);
	-- 				newNotes.add(object);
	-- 			}
	-- 			game.insert(game.members.indexOf(game.healthBar)-5,newNotes);
	-- 			return;
	-- 		]]
	-- )
	-- end
	
	for strum = 0,3 do
		if middlescroll then
			table.insert(defaultY,screenHeight - 1856)
			setProperty('strumNotesExtra'..strum..'.x',getPropertyFromGroup('opponentStrums',strum,'x'))
			setProperty('strumNotesExtra'..strum..'.alpha',0.35)
			if not downscroll then
				setProperty('strumNotesExtra'..strum..'.y',screenHeight+150)
			else
				setProperty('strumNotesExtra'..strum..'.y',-150)
			end
		else
			
			--table.insert(defaultX,(90 + 110 * strum))
			table.insert(defaultX,(-5 + 107 * strum))
		end
	end
	for notes = 0,getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes',notes,'noteType') == 'plr3dad' then
			setPropertyFromGroup('unspawnNotes',notes,'copyX',false)
			setPropertyFromGroup('unspawnNotes',notes,'copyY',false)
			setPropertyFromGroup('unspawnNotes',notes,'copyAlpha',false)
			setPropertyFromGroup('unspawnNotes',notes,'ignoreNote',true)
			setPropertyFromGroup('unspawnNotes',notes,'wasGoodHit',true)
		end
	end
end

-- function onCountdownStarted()
-- 	runHaxeCode([[
-- 		var canTween = !game.iszStoryMode && !game.skipArrowStartTween;
-- 		var middleScroll = ClientPrefs.middleScroll;
		
-- 		for (i in 0...game.strumLineNotes.length) {
-- 			var player = Math.floor(i / 4);
-- 			var key = i % 4;
-- 			var babyArrow = game.strumLineNotes.members[i];
			
-- 			var targetAlpha = 1;
-- 			if (player < 1 && middleScroll)
-- 				targetAlpha = 0.35;
			
-- 			if (canTween) {
-- 				babyArrow.alpha = 0;
-- 				FlxTween.tween(babyArrow, {alpha: targetAlpha}, 1, {ease: FlxEase.circOut, startDelay: 0.5 + (0.1 * (i + (player * 4)))});
-- 			}
-- 			else
-- 				babyArrow.alpha = targetAlpha;
			
-- 			babyArrow.scale.set(
-- 				babyArrow.scale.x / 1.075,
-- 				babyArrow.scale.y / 1.075
-- 			);
-- 			babyArrow.x -= 8 * (key - 2);
			
-- 			if (player == 1) {
-- 				game.setOnLuas('realDefaultPlayerStrumX' + key, babyArrow.x);
-- 				game.setOnLuas('realDefaultPlayerStrumY' + key, babyArrow.y);
-- 			}
-- 			else {
-- 				game.setOnLuas('realDefaultOpponentStrumX' + key, babyArrow.x);
-- 				game.setOnLuas('realDefaultOpponentStrumY' + key, babyArrow.y);
-- 			}
			
-- 			if(player == 1) {
-- 				if (middleScroll)
-- 					babyArrow.x = -278 + 6;
-- 				else
-- 					babyArrow.x = 48 + (50 * 2);
-- 			}
-- 			else
-- 				babyArrow.x = -50;
			
-- 			babyArrow.postAddedToGroup();
-- 			babyArrow.x -= 8 * (key - 2);
			
-- 			if (player == 1) {
-- 				game.setOnLuas('defaultPlayerStrumX' + key, babyArrow.x);
-- 				game.setOnLuas('defaultPlayerStrumY' + key, babyArrow.y);
-- 			}
-- 			else {
-- 				game.setOnLuas('defaultOpponentStrumX' + key, babyArrow.x);
-- 				game.setOnLuas('defaultOpponentStrumY' + key, babyArrow.y);
-- 			}
-- 		}
		
-- 		for (i in 0...4) {
-- 			var x = (-Note.swagWidth * 8) - 14;
-- 			if (middleScroll)
-- 				x = (50 * 4) - (Note.swagWidth * 6) - 22;
			
-- 			var babyArrow = new StrumNote(x, game.strumLine.y, i, 2);
-- 			babyArrow.downScroll = ClientPrefs.downScroll;
			
-- 			var targetAlpha = middleScroll ? 0.35 : 1;
			
-- 			if (canTween) {
-- 				babyArrow.alpha = 0;
-- 				FlxTween.tween(babyArrow, {alpha: targetAlpha}, 1, {ease: FlxEase.circOut, startDelay: 0.5 + (0.1 * (i + 4))});
-- 			}
-- 			else
-- 				babyArrow.alpha = targetAlpha;
			
-- 			game.opponentStrums.add(babyArrow);
-- 			game.strumLineNotes.add(babyArrow);
-- 			gfStrums[i] = babyArrow;
			
-- 			babyArrow.scale.set(
-- 				babyArrow.scale.x / 1.075,
-- 				babyArrow.scale.y / 1.075
-- 			);
-- 			babyArrow.postAddedToGroup();
			
-- 			babyArrow.x -= 8 * (i - 2);
			
-- 			game.setOnLuas('defaultGfStrumX' + i, babyArrow.x);
-- 			game.setOnLuas('defaultGfStrumY' + i, babyArrow.y);
-- 		}
		
-- 		for (i in 0...4) {
-- 			game.setOnLuas('defaultLeftStrumX' + i, defaultStrumPos[i][0]);
-- 			game.setOnLuas('defaultLeftStrumY' + i, defaultStrumPos[i][1]);
-- 		}
-- 		for (i in 4...8) {
-- 			game.setOnLuas('defaultRightStrumX' + (i % 4), defaultStrumPos[i][0]);
-- 			game.setOnLuas('defaultRightStrumY' + (i % 4), defaultStrumPos[i][1]);
-- 		}
-- 		for (i in 8...12) {
-- 			game.setOnLuas('defaultMiddleStrumX' + (i % 4), defaultStrumPos[i][0]);
-- 			game.setOnLuas('defaultMiddleStrumY' + (i % 4), defaultStrumPos[i][1]);
-- 		}
		
-- 		game.callOnLuas('onGfStrumInit', []);
-- 	]])
-- end

function onUpdate()
	for notes = 0,getProperty('notes.length')-1 do
		if getPropertyFromGroup('notes',notes,'noteType') == 'plr3dad' then
			local noteDir = getPropertyFromGroup('notes',notes,'noteData')
			local noteDistance = getPropertyFromGroup('notes',notes,'distance')
			
			-- noteTweenX('NoteMove1',0, 429 ,1,'QuartOut') -- 3 strum
			-- noteTweenX('NoteMove2',1, 530 ,1,'QuartOut') -- 3 strum
			-- noteTweenX('NoteMove3',2, 635 ,1,'QuartOut') -- 3 strum
			-- noteTweenX('NoteMove4',3, 735 ,1,'QuartOut') -- 3 strum
			-- noteTweenX('NoteMove5',4, 849 ,1,'QuartOut') -- bf
			-- noteTweenX('NoteMove6',5, 958 ,1,'QuartOut') -- bf
			-- noteTweenX('NoteMove7',6, 1065 ,1,'QuartOut') -- bf
			-- noteTweenX('NoteMove8',7, 1170 ,1,'QuartOut') -- bf

			local noteType = getPropertyFromGroup('notes',notes,'noteType')
			local noteSus = getPropertyFromGroup('notes',notes,'isSustainNote')
			local noteAngleDir =  90 * math.pi/180
			--[[if middlescroll then
				noteDistance = noteDistance * -1
			end]]
			setPropertyFromGroup('notes',notes,'x',getProperty('strumNotesExtra'..noteDir..'.x') + getPropertyFromGroup('notes',notes,'offsetX') + math.cos(noteAngleDir) * noteDistance)
			
			setPropertyFromGroup('notes',notes,'y',getProperty('strumNotesExtra'..noteDir..'.y') + getPropertyFromGroup('notes',notes,'offsetY') + math.sin(noteAngleDir) * noteDistance)
			setPropertyFromGroup('notes',notes,'alpha',getProperty('strumNotesExtra'..noteDir..'.alpha') * getPropertyFromGroup('notes',notes,'multAlpha'))
			if not noteSus and noteDistance > -30 and noteDistance < 10 or noteSus and noteDistance > -30 and noteDistance < 20 then
				
				local anim = getProperty('singAnimations['..noteDir..']')
				if altAnim then
					anim = anim..'-alt'
				end

				playAnim('dad',anim,true)
				setProperty('dad.holdTimer',0)

				strumAnim(noteDir,'confirm',true)
				callOnLuas('opponentNoteHit',{notes,noteDir,noteType,noteSus})
				removeFromGroup('notes',notes)
				setProperty('vocals.volume',1)
			end
		end
	end
	for strum = 0,3 do
		if getProperty('strumNotesExtra'..strum..'.animation.curAnim.finished') == true then
			strumAnim(strum,'static')
		end
	end
end
function strumAnim(id,anim,reset)
	if getProperty('strumNotesExtra'..id..'.animation.curAnim.name') ~= anim or reset then
		runHaxeCode(
			[[
				game.getLuaObject('strumNotesExtra]]..id..[[').playAnim("]]..anim..'",'..tostring(reset == true)..[[);
				return;
			]]
		)
		--playAnim('strumNotesExtra'..id,anim,reset)
	end
end
function onEvent(name,v1,v2)
	if name == '3rdstrum' then
		for strums = 0,3 do
			if string.lower(v1) ~= 'false' then
				if not created then
					if not middlescroll then
						doTweenX('strumExtraX'..strums,'strumNotesExtra'..strums,defaultX[strums + 1],1,'sineOut')
					else
						if downscroll then
							doTweenY('strumExtraY'..strums,'strumNotesExtra'..strums,50,1,'sineOut')
						else
							doTweenY('strumExtraY'..strums,'strumNotesExtra'..strums,screenHeight - 150,1,'sineOut')
						end
					end
					if strums == 3 then
						created = true
					end
				else
					local alpha = 1
					if middlescroll then
						alpha = 0.35
					end
					doTweenAlpha('strumExtraAlpha'..strums,'strumNotesExtra'..strums,alpha,0.3,'sineOut')
				end
			else
				doTweenAlpha('strumExtraAlpha'..strums,'strumNotesExtra'..strums,0,0.3,'sineOut')
			end
		end
	end
end