require_relative "../lib/play"
require_relative "../lib/poem"
require_relative "../lib/ui"

RSpec.describe Play do

  let(:ui) {Ui.new($stdout, $stdin)}
  let(:poem) {Poem.new(ui)}
  let(:play) {Play.new(ui, poem)}

  it "runs the game" do
    poem = double("poem")
    expect(poem).to receive(:get_values).and_return("cat")
    play = Play.new(ui, poem)
    expect(play.play_madlibs).to eq("cat")
  end

end
