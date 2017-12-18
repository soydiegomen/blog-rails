class MyarticlesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:destroy, :create, :testservice]



  #POST /articles
  def testservice
    puts 'Hellow word'
    @usuario = params[:usuario]
    puts @usuario
    @apellidos = params[:apellidos]
    puts @apellidos[:paterno]
    roles = params[:roles]

    roles.each { |a| puts a }
    @articles = Article.all
  end

  #GET /misarticulos/
  def index
    puts form_authenticity_token
    @articles = Article.all
  end

  #GET /misarticulos/:id
    def show
      @article = Article.find(params[:id])
      puts "********"
      puts @article
    end

  #POST /misarticulos/create
  def create
    @user = User.find(1)
    #@article = Article.new(title: params[:title], body: params[:body])
    @article = @user.articles.new(title: params[:title], body: params[:body])

    if !@article.save
      puts "some error happend"
      puts @article.errors.full_messages
    end
    puts "********"
    puts @article
  end

  #DELETE /misarticulos/:id
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    @articles = Array.new
  end

end
