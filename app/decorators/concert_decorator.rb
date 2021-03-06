class ConcertDecorator < Draper::Decorator
  delegate_all

  def day
    object.date.strftime("%d.%m")
  end

  def year
    object.date.strftime("%Y")
  end

  def location
    "#{object.city}, #{object.venue}"
  end
end
