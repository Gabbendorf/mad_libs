class Ui

  def initialize(stdout, stdin)
    @stdout = stdout
    @stdin = stdin
  end

  def introduce_game
    @stdout.puts "This is Mad-Libs: the World's greatest Word Game!"
  end

  def get_first_noun
    @stdout.puts "Enter a noun:"
    @stdin.gets.chomp
  end

  def get_plural_noun
    @stdout.puts "Enter a plural noun:"
    @stdin.gets.chomp
  end

  def get_second_noun
    @stdout.puts "Enter another noun:"
    @stdin.gets.chomp
  end

  def get_place
    @stdout.puts "Enter a place:"
    @stdin.gets.chomp
  end

  def get_adjective
    @stdout.puts "Enter an adjective:"
    @stdin.gets.chomp
  end

  def get_third_noun
    @stdout.puts "Enter another noun:"
    @stdin.gets.chomp
  end

end
