hangman.controller 'HangmanCtrl', ($scope, $location, gameState)->
	console.log "gameState", gameState
	gameState.newGame()
	console.log "Game answer: ", gameState.answer
