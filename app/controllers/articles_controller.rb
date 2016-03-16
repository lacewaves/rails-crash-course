class ArticlesController < ApplicationController
  def index
    @articles = Article.order ("title asc")

    @article_count = Article.count
  end

  def detail
    @article = Article.find params[:id]
  end
end
