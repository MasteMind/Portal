class StudentsController < ApplicationController
	before_action :require_user

	def new
		@student = Student.new
	end
	
	def index
		@size = 4
		@a = ((params[:id] ||= "1").to_i - 1) * @size
		@b = (params[:id] ||= "1").to_i * @size
		@students = Student.where("?<id AND ?>=id",@a, @b)
		@max = (Student.all().size / @size) +1
	end

	def show
		if params[:id] == "index"
			redirect_to 'students/index/1'
		else
			@student = Student.find(params[:id])
			@mentors = @student.mentors
		end
	end


	def create
		@student = Student.new(user_params)
		if @student.save
			redirect_to '/students'
		else
			redirect_to '/'
		end
	end

	private
	def user_params
		params[:name, :email, :contact]
	end

end
