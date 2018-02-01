class StudentsController < ApplicationController
	skip_before_action :verify_authenticity_token, only: [:create, :destroy, :update]
	
	#POST /students/
	def create
		@school = School.find(params[:company])
	    #@school = School.new(name: params[:name], address: params[:address], phone: params[:phone], creation:@now, is_active: params[:is_active], is_active: params[:students_count])
	    @student = @school.students.new(name: params[:name], last_name: params[:last_name], last_name: params[:is_active], age: params[:age])

	    if !@student.save
	      puts "some error happend"
	      puts @school.errors.full_messages
	    end
	end

	#GET /students/
	def index
		@students = Student.all
	end

	#GET /school/:id
	def show
		@student = Student.find(params[:id])
	end

	#DELETE /student/:id
	def destroy
		@student = Student.find(params[:id])
		@student.destroy
	end

	#PUT /student/:id
	def update
		@student = Student.find(params[:id])
		@student.name = params[:name]
		@student.last_name = params[:last_name]
		@student.is_active = params[:is_active]
		@student.age = params[:age]
		if !@student.save
	      puts "some error happend"
	      puts @student.errors.full_messages
	    end
	end

	#Custom querys
	#GET /school/:id
	def filterBySchool
		@school = School.find(params[:company])
		@students = Array.new
		#Validar que haya estudiantes
		if !@school.students.nil?
			@students = @school.students;
		end
	end
end
