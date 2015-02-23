class PagesController < Garnet::Controller
  def about
    render :about, name: "Darth", last_name: "Vader"
  end
end