module LocalHoney
  module Localizable
    extend ActiveSupport::Concern

    included do
      before_filter :set_locale
    end

    def set_locale
      I18n.locale = local_honey_user.try(:locale).presence || session[:locale]
    end

    protected

    def local_honey_user
    end
  end
end
