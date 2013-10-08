class ApplicationController < ActionController::Base
  include LocalHoney::Localizable

  protect_from_forgery

  def local_honey_user
    current_user
  end
end
