require "local_honey/engine"

module LocalHoney
  extend ActiveSupport::Concern

  included do
    before_filter :set_locale
    after_filter :local_honey_after_filter, only: :locale
  end

  def set_locale
    I18n.locale = local_honey_user.try(:locale) || session[:locale]
  end

  def local_honey_after_filter
  end
end