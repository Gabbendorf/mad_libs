require_relative '../lib/poem'
require_relative '../lib/ui'

RSpec.describe Poem do

  let(:poem) {Poem.new(ui)}
  let(:ui) {Ui.new($stdin, $stdout)}

  

end
