require_relative '../lib/ui'
require_relative '../lib/poem'

RSpec.describe Ui do

  let(:output) {StringIO.new}
  let(:input) {StringIO.new}
  let(:poem) {Poem.new}
  let(:ui) {Ui.new(output, input)}

  it "introduces the game to user" do
    ui = Ui.new(output, input)
    ui.introduce_game
    expect(output.string).to include("This is Mad-Libs: the World's greatest Word Game!")
  end

  it "asks to enter a noun" do
    input = StringIO.new("\n")
    ui = Ui.new(output, input)
    ui.get_first_noun
    expect(output.string).to include("Enter a noun:")
  end

  it "asks to enter a noun (plural)" do
    input = StringIO.new("\n")
    ui = Ui.new(output, input)
    ui.get_plural_noun
    expect(output.string).to include("Enter a plural noun:")
  end

  it "asks to enter second noun" do
    input = StringIO.new("\n")
    ui = Ui.new(output, input)
    ui.get_second_noun
    expect(output.string).to include("Enter another noun:")
  end

  it "asks to enter a place" do
    input = StringIO.new("\n")
    ui = Ui.new(output, input)
    ui.get_place
    expect(output.string).to include("Enter a place:")
  end

  it "asks to enter an adjective" do
    input = StringIO.new("\n")
    ui = Ui.new(output, input)
    ui.get_adjective
    expect(output.string).to include("Enter an adjective:")
  end

  it "asks to enter third noun" do
    input = StringIO.new("\n")
    ui = Ui.new(output, input)
    ui.get_third_noun
    expect(output.string).to include("Enter another noun:")
  end

end
