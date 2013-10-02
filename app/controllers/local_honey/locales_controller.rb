module LocalHoney
  class LocalesController < LocalHoney::ApplicationController
    def locale
      I18n.locale = params[:locale]
      session[:current_locale] = params[:locale]
      redirect_to request.referrer
    end
  end
end