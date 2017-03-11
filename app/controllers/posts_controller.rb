class PostsController < ApplicationController
	def new
  		@post = Post.new
  	end
  	def create
  		@post = Post.create!(post_params)
      redirect_to course_path @post.course_id
  	end

    def post_params
      params.require(:post).permit(:name,:content, :course_id, :user_id)
    end

end
