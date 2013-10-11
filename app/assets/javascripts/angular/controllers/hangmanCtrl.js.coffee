hangman.controller 'HangmanCtrl', ($scope, $location, gameState)->
  IMAGE_HEIGHT_PX = 400

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

  # allow letters to be chosen by keyboard
  $scope.keyupLetter = (event)->
    guess = String.fromCharCode(event.keyCode)
    guessFound = _.find $scope.alphabet, (letter)-> letter == guess
    if(guessFound)
      $scope.selectLetter(guess)

  $scope.selectLetter = (guessedLetter)->
    # no letters can be selected if the game is over.
    if(!gameState.gameOver)
      gameState.guessLetter(guessedLetter)
      $scope.alphabet = _.filter($scope.alphabet, (letter)-> letter != guessedLetter)

  $scope.advanceDeath = ()->
    # TODO: optimize this so it is not called twice every time.
    #       I think this requires a directive.
    yOffset = gameState.incorrectCount * - IMAGE_HEIGHT_PX
    console.log "yOffset = #{yOffset}"
    "background-position": "0 " + yOffset + "px"
