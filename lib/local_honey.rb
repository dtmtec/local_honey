require "local_honey/engine"

module LocalHoney
  autoload :Localizable, 'local_honey/localizable'

  mattr_accessor :devise_scopes
  @@devise_scopes = [:user]
end

require 'devise'
