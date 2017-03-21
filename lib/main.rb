require_relative 'ui'
require_relative 'poem'
require_relative 'play'

ui = Ui.new($stdout, $stdin)
poem = Poem.new(ui)
new_game = Play.new(ui, poem)

ui.introduce_game
new_game.play_madlibs
reply = ui.asks_to_play_again
  while reply != "no"
    new_game.play_madlibs
    reply = ui.asks_to_play_again
  end
