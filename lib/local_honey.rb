require "local_honey/engine"

module LocalHoney
  extend ActiveSupport::Concern

  included do
    before_filter :set_locale
  end

  def set_locale
    I18n.locale = local_honey_user.try(:locale) || session[:locale]
  end
end