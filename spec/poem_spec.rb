require_relative '../lib/poem'
require_relative '../lib/ui'

RSpec.describe Poem do

  let(:poem) {Poem.new(ui)}
  let(:ui) {Ui.new($stdin, $stdout)}

  it "stores all user's inputs in instance variables" do
    ui = double('ui')
    expect(ui).to receive(:get_first_noun).and_return("cat")
    expect(ui).to receive(:get_plural_noun).and_return("dogs")
    expect(ui).to receive(:get_second_noun).and_return("ice-cream")
    expect(ui).to receive(:get_place).and_return("New York")
    expect(ui).to receive(:get_adjective).and_return("yellow")
    expect(ui).to receive(:get_third_noun).and_return("moon")
    poem = Poem.new(ui)
    poem.get_values
    expect(poem.first_noun).to eq("cat")
    expect(poem.plural_noun).to eq("dogs")
    expect(poem.second_noun).to eq("ice-cream")
    expect(poem.place).to eq("New York")
    expect(poem.adjective).to eq("yellow")
    expect(poem.third_noun).to eq("moon")
  end

  # it "fills in a poem with user's inputs replacing the correspondent instance variables" do
  #   expect(poem.fill_in_poem).to eq
  # end

end
