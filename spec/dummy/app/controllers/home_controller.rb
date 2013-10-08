class HomeController < ApplicationController
  before_filter :authenticate_user!, only: [:private]

  def index
  end

  def private
    @scope = :user
    render action: :index
  end
end
