hangman.factory 'gameState', ()->
  WORDS: [
    'cat', 'dog', 'pork', 'milk', 'love', 'Eli', 'daddy', 'mommy', 'pig',
    'cow', 'chair', 'ball', 'kite', 'bat', 'bird', 'one', 'two', 'three',
    'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten'
  ],

  _randomWord: ()->
    this.WORDS[Math.floor(Math.random() * this.WORDS.length)]

  newGame: ()->
    @answer = @._randomWord()

