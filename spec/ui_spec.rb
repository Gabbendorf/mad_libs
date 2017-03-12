require_relative '../lib/ui'

RSpec.describe Ui do

  let(:output) {StringIO.new}
  let(:input) {StringIO.new}
  let(:ui) {Ui.new(output, input)}

  it "introduces the game to user" do
    ui = Ui.new(output, input)
    ui.introduction
    expect(output.string).to include("This is Mad-Libs: the World's greatest Word Game!")
  end

end
