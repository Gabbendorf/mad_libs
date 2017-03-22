class Play

  def initialize(ui, poem)
    @ui = ui
    @poem = poem
  end

  def play_madlibs
    @poem.get_values
    filled_in_poem = @poem.fill_in_poem
    @ui.print_out_poem(filled_in_poem)
  end

  def play_again
    reply = @ui.asks_to_play_again
      while reply != "no"
        play_madlibs
        reply = @ui.asks_to_play_again
      end
  end

end
