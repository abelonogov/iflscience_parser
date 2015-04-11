class HomeController < ApplicationController
  def index
    @doc = Nokogiri::HTML(open("http://iflscience.com/"))
  end

  def show_current
    @post = Nokogiri::HTML(open("http://iflscience.com#{params[:url]}/"))
  end

  def show
  end
end
