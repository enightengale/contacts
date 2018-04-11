require("pry")

class Contact

  @@contacts = []

  attr_reader :id
  attr_accessor :name
  attr_accessor :number

  def initialize(name, number)
    @name = name
    @number = number
    @id = @@contacts.length + 1
  end

  def self.all()
    @@contacts
  end

  def save()
    @@contacts.push(self)
  end

  def self.clear()
    @@contacts = []
  end

  def self.find(id)
    person_id = id.to_i()
    @@contacts.each do |person|
      if person.id == person_id
        return person
      end
    end
  end

end
