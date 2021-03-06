class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit,:update,:destroy,:show]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was succesfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def show
    #The params variable is a hash with all the parameters that the controller received from a request.
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    flash[:notice] = "Articles was succesfully deleted"
    redirect_to articles_path()
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      flash[:notice] = "Article was succesfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
    def set_article
      @article = Article.find(params[:id])
    end
end