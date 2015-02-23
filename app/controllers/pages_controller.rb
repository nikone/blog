class PagesController < Garnet::Controller
  attr_reader :data

  def about
    render :about, name: "Darth", last_name: "Vader"
  end

  def info
    @data = params["data"]
    #render :info, data: params["data"]
  end
end