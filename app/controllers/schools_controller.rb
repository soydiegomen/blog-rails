class SchoolsController < ApplicationController
	skip_before_action :verify_authenticity_token, only: [:create, :destroy, :update]
	#TODO: Utilizar los nombres standar para los servicios de las REST APIs

	#GET /schools/
	def index
		puts form_authenticity_token
		@schools = School.all
	end

	#POST /schools/
	def create
	    @now = DateTime.now
	    #@article = @user.articles.new(title: params[:title], body: params[:body])
	    @school = School.new(name: params[:name], address: params[:address], phone: params[:phone], creation:@now, is_active: params[:is_active], is_active: params[:students_count])

	    if !@school.save
	      puts "some error happend"
	      puts @school.errors.full_messages
	    end
	end

	#DELETE /school/:id
	def destroy
		@school = School.find(params[:id])
		@school.destroy
		@school = Array.new
	end

	#GET /school/:id
	def show
		@school = School.find(params[:id])
	end

	#PUT /school/:id
	def update
		@school = School.find(params[:id])
		@school.name = params[:name]
		@school.address = params[:address]
		@school.phone = params[:phone]
		@school.is_active = params[:is_active]
		@school.students_count = params[:students_count]
		if !@school.save
	      puts "some error happend"
	      puts @school.errors.full_messages
	    end
	end
end
