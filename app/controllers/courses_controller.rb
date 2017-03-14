class CoursesController < ApplicationController
	@users= User.all

		def new
  		@course = Course.new
  	end
  	def create
  		@course = Course.create!(course_params)
      redirect_to courses_path
  	end

    def index
      @course = Course.new
      @courses= Course.all
    end

    def edit
      @course= Course.find(params[:id])
      unless @course.users.include?(current_user)
        @course.users << current_user
      end
      redirect_to(@course)
    end

    def remove
      @course= Course.find(params[:id])
      if @course.users.include?(current_user)
        @course.users.delete(current_user)
      end
      redirect_to(@course)
    end

    def show
      @course= Course.find(params[:id])
      @post= Post.new
      @posts= @course.posts
    end

    def course_params
      params.require(:course).permit(:name,:subject,
                                      :professor, :description)
    end
end
