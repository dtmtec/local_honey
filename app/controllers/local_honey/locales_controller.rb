module LocalHoney
  class LocalesController < ::ApplicationController

    def locale
      locale = params[:locale]

      if local_honey_user
        if local_honey_user.locale != locale
          local_honey_user.locale = locale
          local_honey_user.save
        end
      else
        session[:locale] = locale
      end

      redirect_to request.referrer
    end
  end
end