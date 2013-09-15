class HomeController < ApplicationController

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.recent
    if params[:categoria]
      @cat = Category.where(:name => params[:categoria]).last
      @posts = Post.category(@cat)
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end
  
  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end
  
  # GET /categories
  # GET /categories.json
  def categories
    @categories = Category.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end
  
  # GET /random
  # GET /random.json
  def random
      @post = Post.offset(rand(Post.count)).first
    
    respond_to do |format|
      format.html { redirect_to home_path(@post) }
      format.json { render json: @post }
    end
  end
  

  
end
