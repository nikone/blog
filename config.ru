require './config/application.rb'

app = Blog::Application.new

app.route do
  match "/", "home#index"
  match "/pages/about", "pages#about"
  match "/pages/info", "pages#info"

  match "/:controller/:action"
end

run app