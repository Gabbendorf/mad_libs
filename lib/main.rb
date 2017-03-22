require_relative 'ui'
require_relative 'poem'
require_relative 'play'

ui = Ui.new($stdout, $stdin)
poem = Poem.new(ui)
play = Play.new(ui, poem)

ui.introduce_game
play.play_madlibs
play.play_again
