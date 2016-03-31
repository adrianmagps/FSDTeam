class BlogController < ApplicationController
  before_action :set_post, only: [:show, :edit]
  before_action :set_categ_tags, only: [:edit, :new]
  before_action :init_widgets, except: [:edit, :new]

  def index
    respond_to do |format|
      format.html
      #format.json { render json: { posts: @posts }, include: [:categories, :user, :tags, :comments] }
      #format.atom
    end
  end

  def show
    @post = @posts.find(params[:id])
    render 'post'
  end

  def new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def by_category
    @category = Category.find(params[:id])
    @description = @category.name
    @posts = @category.posts
    @from = 'category'
    render 'by'
  end

  def by_tag
    @tag = Tag.find(params[:id])
    @description = @tag.name
    @posts = @tag.posts
    @from = 'tag'
    render 'by'
  end

  def by_date
    @posts = Post.where("DATE_PART('month', created_at) = ? and DATE_PART('year',created_at) = ?", params[:month], params[:year])
    @description = params[:month] + '/' + params[:year]
    @from = 'archive'
    render 'by'
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def set_categ_tags
      @categories = Category.all.only(:id, :name)
      @tags = Tag.all.only(:id, :name)
    end

    def post_params
      params.require(:post).permit(:title, :content, :visible)
    end

    def init_widgets
      @posts = Post.all.order(created_at: :desc)
      @categories = Category.all.order(name: :desc)
      @tags = Tag.all.order(name: :desc)
      @recents = Post.all.order(created_at: :desc).limit(3)
      @post_months = @posts.group_by { |t| t.created_at.beginning_of_month.to_date  }
    end

end
