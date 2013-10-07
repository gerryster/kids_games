hangman.controller 'HangmanCtrl', ($scope, $location, gameState)->
  gameState.newGame()
  console.log "Game answer: ", gameState.answer

  $scope.gameState = gameState
  $scope.formattedGuess = null

  $scope.$watch 'gameState.guess', (oldValue, newValue)->
    $scope.formattedGuess = $scope.formatGuess(gameState.guess)

  $scope.formatGuess = (guess)->
    # the character class is needed because of this CS wart: https://github.com/jashkenas/coffee-script/issues/607
    guess.replace(/[ ]/g, '_')

  $scope.alphabet = ('ABCDEFGHIJKLMNOPQRSTUVWXYZ').split('')

  $scope.clickLetter = (letter)->
    gameState.guessLetter(letter)

  # allow letters to be chosen by keyboard
  $scope.keyupLetter = (event)->
    guess = String.fromCharCode(event.keyCode)
    guessFound = _.find $scope.alphabet, (letter)->
      letter == guess
    if(guessFound)
      $scope.clickLetter(guess)
