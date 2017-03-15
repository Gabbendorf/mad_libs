require_relative '../lib/poem'
require_relative '../lib/ui'

RSpec.describe Poem do

  let(:poem) {Poem.new(ui)}
  let(:ui) {Ui.new($stdin, $stdout)}

  it "stores the player's input in first_noun variable" do
    ui = double("ui")
    expect(ui).to receive(:ask_first_noun).and_return("dog")
    expect(poem.first_noun).to eq("dog")
  end


end
