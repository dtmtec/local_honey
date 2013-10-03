module LocalHoney
  class LocalesController < ::ApplicationController
    def locale
      locale = params[:locale]

      session[:locale] = locale

      if local_honey_user && local_honey_user.locale != locale
        local_honey_user.locale = locale
        local_honey_user.save
      end

      redirect_to request.referrer
    end
  end
end