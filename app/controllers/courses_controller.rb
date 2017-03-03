class CoursesController < ApplicationController
	@users= User.all

		def new
  		@course = Course.new
  	end
  	def create
  		@course = Course.new(course_params)
  	end

    def show
      @course= Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :user_ids =>[])
    end
end
