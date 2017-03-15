require_relative 'ui'

class Poem

  def initialize(ui)
    @ui = ui
  end

  def get_values
    @first_noun = @ui.get_first_noun
    @plural_noun = @ui.get_plural_noun
    @second_noun = @ui.get_second_noun
    @place = @ui.get_place
    @adjective = @ui.get_adjective
    @third_noun = @ui.get_third_noun
  end

  def fill_in_poem
      """
      Be kind to your #{@first_noun}-footed #{@plural_noun}
      For a duck may be somebody`s #{@second_noun},
      Be kind to your #{@plural_noun} in #{@place}
      Where the weather is always #{@adjective}.

      You may think that this is the #{@third_noun},
      Well it is.
      """
  end
end

ui = Ui.new($stdout, $stdin)
poem = Poem.new(ui)
poem.get_values
filled_in_poem = poem.fill_in_poem
ui.print_out_poem(filled_in_poem)
