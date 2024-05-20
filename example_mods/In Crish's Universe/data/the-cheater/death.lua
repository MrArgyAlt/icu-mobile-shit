function onGameOver()
	math.randomseed(os.time())
	rSound = math.random(1,7)
	if rSound == 1 then
		playSound('gameOver1')
	elseif rSound == 2 then
		playSound('gameOver2')
	elseif rSound == 3 then
		playSound('gameOver3')
	elseif rSound == 4 then
		playSound('gameOver4')
	elseif rSound == 5 then
		playSound('gameOver5')
    elseif rSound == 6 then
        playSound('gameOver6')
    elseif rSound == 7 then
        playSound('gameOver7')
    end
	return Function_Continue;
end