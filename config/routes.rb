LocalHoney::Engine.routes.draw do
  match 'locales/:locale' => 'locales#locale', as: :locale, via: :get
end