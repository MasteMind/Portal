class MentorsController < ApplicationController
	before_action :require_user

	def index
		@size = 4
		@a = ((params[:id] ||= "1").to_i - 1) * @size
		@b = (params[:id] ||= "1").to_i * @size
		@mentors = Mentor.where("?<id AND ?>=id",@a, @b)

		@max = (Mentor.all().size / @size)
	end

	def show
		 if params[:id] == "index"
		 	redirect_to '/mentors/index/1'
		 else
			@mentor = Mentor.find(params[:id])
			@students = @mentor.students
		end
	end
end
