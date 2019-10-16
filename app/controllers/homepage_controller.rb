class HomepageController < ApplicationController
  expose_decorated(:concerts, collection: true, decorator: ConcertDecorator) { upcoming_concerts.limit(7) }

  private

  def upcoming_concerts
    Concert.upcoming || Concert.recent
  end
end
