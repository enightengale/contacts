require("pry")

class Contact

  @@contacts = []

  attr_accessor :name
  attr_accessor :number

  def initialize(name, number)
    @name = name
    @number = number
  end

  def self.all()
    @@contacts
  end

  def save()
    @@contacts.push(self)
  end

end
