class NewsDecorator < Draper::Decorator
  delegate_all

  LOCALES_MAP = {
    en: 'english',
    pl: 'polish'
  }.freeze

  def title
    if I18n.locale == :pl
      object.polish_title
    else
      object.english_title
    end
  end

  def content
    if I18n.locale == :pl
      object.polish_content
    else
      english_content
    end
  end

  def english_content
    object.english_content || "Content not available in English yet..."
  end

  def date
    I18n.locale == :pl ? object.created_at.strftime("%d.%m.%Y") : object.created_at.strftime("%d/%m/%Y")
  end

  def available_in_locale_language
    locale = I18n.locale
    object.send("#{LOCALES_MAP[locale]}_content") && object.send("#{LOCALES_MAP[locale]}_title")
  end
end
