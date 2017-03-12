class Ui

  def initialize(stdout, stdin)
    @stdout = stdout
    @stdin = stdin
  end

  def introduction
    @stdout.puts "This is Mad-Libs: the World's greatest Word Game!"
  end

end
