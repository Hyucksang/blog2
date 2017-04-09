class Blog2Controller < ApplicationController
  def index
      @posts = Post.all
  end

  def post
    post = Post.new
    post.writer = params[:writer]
    post.title = params[:title]
    post.content = params[:content]
    post.save
  redirect_to '/'
  end
  def delete
    delete_post = Post.find(params[:id])
    delete_post.destroy
    
    redirect_to '/'
  end
  
  def edit
    @edit_post = Post.find(params[:id])    #@는 view에서 보여줄지 말지 정하는 것
  end
  
  def update
    update_post = Post.find(params[:id])
    update_post.writer = params[:writer]    
    update_post.title = params[:title]
    update_post.content = params[:content]
    update_post.save
    
    redirect_to '/'
  end
  
end
