require './config/application.rb'

map "/" do
  run HomeController.action(:index)
end

map "/pages" do
  map "/about" do
    run PagesController.action(:about)
  end

  map "/info" do
    run PagesController.action(:info)
  end
end

run Blog::Application.new