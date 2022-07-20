class BlogController < ApplicationController
  def index
    @blogs = Blog.all 
  end
  def show 
    @blog = Blog.find(params[:id])
  end
  def new
  end
  def create
    @blog = Blog.create(form_param)
    if @blog.valid?
      redirect_to blogs_path
    else
      redirect_to new_blogs_path
    end
  end
  
  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
