class MentorsController < ApplicationController
	before_action :require_user

	def new
		@mentor = Mentor.new
	end

	def index
		@size = 4
		@a = ((params[:id] ||= "1").to_i - 1) * @size
		@b = (params[:id] ||= "1").to_i * @size
		@mentors = Mentor.where("?<id AND ?>=id",@a, @b)

		@max = (Mentor.all().size / @size)+1
	end

	def show
		 if params[:id] == "index" || params[:id] == ""
		 	redirect_to '/mentors/index/1'
		 else
			@mentor = Mentor.find(params[:id])
			@students = @mentor.students
		end
	end

	def create
		@mentor = Mentor.new(mentor_params)
		if @mentor.save
			redirect_to '/mentors'
		else
			redirect_to '/mentors'
		end
	end

	private
	def mentor_params
		params.require(:mentor).permit(:name, :email, :contact)
	end
end
