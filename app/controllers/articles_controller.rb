class ArticlesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @reply = Reply.new
    @favorite = current_user.favorites.where(article_id: @article.id)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    @article.save         #還需要加上更新失敗判斷
    redirect_to article_path(@article)
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    if params[:status] != nil
      @article.status = "draft"
    else
      @article.status = "published"
    end

    @article.save    #還需要加上新增失敗判斷
    redirect_to articles_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  def work
    @articles = Article.all
  end

  def mood
    @articles = Article.all
  end
  
  def study
    @articles = Article.all
  end
  
  def others
    @articles = Article.all
  end

  def fun
    @articles = Article.all
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :visible_id, :category_id)
  end

end
