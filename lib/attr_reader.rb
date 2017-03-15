class User

  #attr_reader :username
  #attr_writer :username
  attr_accessor :username

  def initialize(name)
    @username = name
  end

  def uppercase_username
    @username.upcase
  end

  #def username
  #  @username
  #end

  #def username=(new_username)
  #  @username = new_username
  #end

end

user = User.new("GABBA")

user.username
