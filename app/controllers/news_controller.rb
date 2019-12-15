class NewsController < ApplicationController
  expose_decorated(:news_items, collection: true, decorator: NewsDecorator) { News.all }
  expose_decorated(:news)
  before_action :find_news, only: :show

  private

  def find_news
    @news = News.find(params[:id]).decorate
  end
end