class PagesController < Garnet::Controller
  def about
    render :about, name: "Darth", last_name: "Vader"
  end

  def info
    render :info, data: params["data"]
  end
end