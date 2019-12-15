class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale, :navbar_projects

  def navbar_projects
    @navbar_projects ||= Project.all
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  def set_admin_locale
    I18n.locale = :en
  end
end
