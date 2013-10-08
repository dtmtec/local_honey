LocalHoney::Engine.routes.draw do
  get "sessions/locales/:locale" => 'locales#locale', as: :session_locale

  LocalHoney.devise_scopes.each do |scope|
    devise_scope scope.to_sym do
      get "#{scope.to_s.pluralize}/locales/:locale" => 'locales#locale', as: :"#{scope}_locale"
    end
  end
end
