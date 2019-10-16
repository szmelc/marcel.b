module ConcertsHelper
  def concert_years
    Concert.all.pluck(:date).map(&:year).uniq
  end

  def current_year
    Date.today.year
  end

  def future_concerts_years
    Concert.in_future_years.pluck(:date).map(&:year).uniq
  end

  def past_concerts_years
    Concert.where("date < ?", Date.today.beginning_of_year).pluck(:date).map(&:year).sort.uniq
  end
end
