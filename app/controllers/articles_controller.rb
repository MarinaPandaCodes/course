class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show 
  end


  def index 
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
   
  end

  def create
   @article = Article.new(article_params)
   if @article.save
    flash[:notice] = "Article was successfully created."
     redirect_to @article
   else
     render :new, status: :unprocessable_entity 
   end
  end

  def update
    
    if @article.update(article_params)
      flash[:notice] = "Article was successfully updated."
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy 
    @article.destroy
    flash[:notice] = "Article was successfully deleted."
    redirect_to articles_path

  end

  private
  def set_article
   @article = Article.find(params[:id])
  end


  def article_params
    params.require(:article).permit(:title, :description)
  end
  
end
