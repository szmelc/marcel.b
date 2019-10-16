class ConcertsController < ApplicationController
  expose_decorated(:concerts, collection: true, decorator: ConcertDecorator) do
    Concert.where(date: Date.today.beginning_of_year..Date.today.end_of_year)
  end

  def fetch_concerts
    year = params[:year].present? ? params[:year].to_i : Date.today.year
    @selected_concerts = Concert.in_year(year).decorate

    respond_to do |format|
      format.js
    end
  end
end
