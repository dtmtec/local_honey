module LocalHoney
  class LocalesController < ActionController::Base
    def locale
      if local_honey_user
        local_honey_user.locale = params[:locale]
        local_honey_user.save
      else
        session[:locale] = params[:locale]
      end

      redirect_to request.referrer || main_app.root_path
    end

    protected

    def local_honey_user
      @local_honey_user ||= devise_mapping.presence && warden.authenticate(:scope => devise_mapping.name)
    end

    def devise_mapping
      @devise_mapping ||= request.env["devise.mapping"]
    end

    def warden
      request.env['warden']
    end
  end
end
