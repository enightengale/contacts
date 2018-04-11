require("sinatra")
require("sinatra/reloader")
also_reload('lib/**/*.rb')
require("./lib/contacts")

get("/") do

  @contacts = Contact.all()
  erb(:index)
end

post("/") do
  name = params.fetch("name")
  number = params.fetch("number")
  contact = Contact.new(name, number)
  contact.save()
  @contacts = Contact.all()
  erb(:index)
end

get("/contact/:id") do
  @contacts = Contact.find(params[:id])
  erb(:contact)
end
