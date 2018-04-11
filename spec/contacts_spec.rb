require("rspec")
require("contacts")

describe("Contact") do

  describe(".all") do
    it("returns all your contacts") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("should create a new contact") do
      john = Contact.new("John", "517-666-8888")
      john.save()
      expect(Contact.all()).to(eq([john]))
    end
  end

  describe("#id") do
    it("increment id by 1 each time one is added") do
      item1 = Contact.new("apples", "345345")
      item1.save()
      item2 = Contact.new("toast", "345345")
      item2.save()
      expect(item1.id()).to(eq(2))
      expect(item2.id()).to(eq(3))
    end
  end

  describe(".find") do
    it("finds an item based on its id") do
      Contact.clear()
      item = Contact.new("tacos", "43543")
      item.save()
      expect(Contact.find(1)).to(eq(item))
    end
  end
end
