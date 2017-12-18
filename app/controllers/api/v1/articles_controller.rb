# my_api/app/controller/api/v1/users_controller.rb

class AriclesController < ApplicationController

  def index
  	@articles = Article.all
  end
  
end