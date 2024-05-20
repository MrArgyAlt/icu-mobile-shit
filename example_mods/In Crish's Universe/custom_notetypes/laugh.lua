function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'laugh' then
		characterPlayAnim('dad', 'laugh', true);
	end
end