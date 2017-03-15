require_relative 'ui'
require_relative 'poem'

class Game

  attr_reader :ui, :poem

  def initialize(ui, poem)
    @poem = Poem.new
    @ui = Ui.new($stdin, $stdout, @poem)
  end

  def start
    @ui.introduce_game
    @ui.ask_first_noun
    @ui.ask_plural_noun
    @ui.ask_second_noun
    @ui.ask_place
    @ui.ask_adjective
    @ui.ask_third_noun
    @ui.print_poem(ui)
  end
end

ui = Ui.new($stdin, $stdout, @poem)
poem = Poem.new(ui)
game = Game.new(ui, poem)
game.start
