class PagesController < ApplicationController
  def home
    @latest_articles = Article.order(created_at: :desc).limit(5)
  end
  def about 
  end
end
