class NewsDecorator < Draper::Decorator
  delegate_all

  LOCALES_MAP = {
    en: 'english',
    pl: 'polish'
  }.freeze

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
  