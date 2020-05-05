class HomepageController < ApplicationController
  expose_decorated(:concerts, collection: true, decorator: ConcertDecorator) { upcoming_concerts.limit(7) }
  expose_decorated(:news, collection: true, decorator: NewsDecorator) { News.all }
  expose(:homepage_picture) { HomepagePhoto.find_by(active: true) || HomepagePhoto.last }

  private

  def upcoming_concerts
    Concert.upcoming || Concert.recent
  end
end
