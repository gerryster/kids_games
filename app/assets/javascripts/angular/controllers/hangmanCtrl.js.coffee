hangman.controller 'HangmanCtrl', ($scope, $location, gameState)->
	gameState.newGame()
	console.log "Game answer: ", gameState.answer

	$scope.guess = 'the guess'
