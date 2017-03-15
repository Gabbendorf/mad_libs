require_relative 'ui'

class Poem

  attr_reader :first_noun, :plural_noun, :second_noun, :place, :adjective, :third_noun

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

end
