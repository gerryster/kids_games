hangman.controller 'HangmanCtrl', ($scope, $location, gameState)->
	gameState.newGame()
	console.log "Game answer: ", gameState.answer

	$scope.gameState = gameState
	$scope.formattedGuess = null

	$scope.$watch gameState.guess, ()->
		$scope.formattedGuess = $scope.formatGuess(gameState.guess)

	$scope.formatGuess = (guess)->
		# the character class is needed because of this CS wart: https://github.com/jashkenas/coffee-script/issues/607
    guess.replace(/[ ]/g, '_')

  $scope.alphabet = alphabet = ('ABCDEFGHIJKLMNOPQRSTUVWXYZ').split('')
  $scope.clickLetter = (letter)->
  	console.log "got into clickLetter with this letter: ", letter
