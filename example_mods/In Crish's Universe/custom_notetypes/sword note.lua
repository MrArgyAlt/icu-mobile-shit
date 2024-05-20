function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'sword note' then
		triggerEvent('Screen Shake', '0.2, 0.003', '0.1, 0.001');
		characterPlayAnim('boyfriend', 'dodge', false);
		end
end
function noteMiss(id, i, noteType, isSustainNote)
	if noteType == 'sword note' then
 		triggerEvent('Screen Shake', '0.2, 0.003', '0.1, 0.001');
		setProperty("health", getProperty("health") - 0.012);
		characterPlayAnim('boyfriend', 'hurt', true);
		noteTweenAlpha('a', 4, 0.5, 0.8, 'smootherStepOut')
		noteTweenAlpha('e', 5, 0.5, 0.9, 'smootherStepOut')
		noteTweenAlpha('p', 6, 0.5, 1, 'smootherStepOut')
		noteTweenAlpha('h', 7, 0.5, 1.1, 'smootherStepOut')
		setProperty('boyfriend.stunned', true);
		runTimer('stun', 3);
	end
end
function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'stun' then
		characterPlayAnim('boyfriend', 'hey', true)
		noteTweenAlpha('a', 4, 1, 0.8, 'smootherStepOut')
		noteTweenAlpha('e', 5, 1, 0.9, 'smootherStepOut')
		noteTweenAlpha('p', 6, 1, 1, 'smootherStepOut')
		noteTweenAlpha('h', 7, 1, 1.1, 'smootherStepOut');
		setProperty('boyfriend.stunned', false);
	end
end