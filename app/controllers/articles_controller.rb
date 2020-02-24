class ArticlesController < ApplicationController
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

  private
  def article_params
    params.require(:article).permit(:title, :description)
  end
end