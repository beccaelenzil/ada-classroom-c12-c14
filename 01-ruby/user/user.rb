class User
  #Constructor, called automatically when you invoke User.new
  def initialize(name, email, type = "student")
    @name = name
    @email = email
    @type = type
  end

  def name
    return @name
  end

  def name=(new_name)
    @name = new_name
  end

  def email
    return @email
  end

  def email=(new_email)
    @email = new_email
  end

  def type
    return @type
  end

  def summary
    return "#{name}: #{email}: #{type}"
  end
end