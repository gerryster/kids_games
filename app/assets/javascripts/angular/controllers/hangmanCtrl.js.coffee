hangman.controller('HangmanCtrl', (scope, $location, todoStorage, filterFilter)->
	todos = $scope.todos = todoStorage.get()
)
