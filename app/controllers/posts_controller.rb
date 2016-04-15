class PostsController < ApplicationController

  def index
    if !params.has_key?(:course)
      @courses = current_user.courses
    else
      @course = Course.find(params[:course]) or render_404
      @posts = @course.posts
    end
  end

  def show
    @post = Post.find(params[:id])
    if @post.user_id
      @user = User.find(@post.user_id)
    end
  end


  def new
    @post = Post.new
  end

  # GET /posts/:id?course=:course_id
  def create
    if current_user.id == params[:post][:user_id].to_i
      @course = Course.find(params[:post][:course_id]) or render_404
      @post = @course.posts.new(post_params)
      @post.save
      redirect_to @post
    else
      render_404
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :course_id, :user_id)
  end



end
