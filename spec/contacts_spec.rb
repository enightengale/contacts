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
end
