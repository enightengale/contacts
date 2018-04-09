require("pry")

class Contact

  @@contacts = []

  def initialize(name, phone)
    @name = name
    @phone = phone
  end

  def self.all()
    @@contacts
  end

  def save()
    @@contacts.push(self)
  end

end

binding.pry
