class ApplicationController < ActionController::Base
  #because APIs don't have sessions
  protect_from_forgery with: :null_session

  def index
      render 'sessions/index'
  end

  # app/controllers/concerns/authenticable.rb
  include Authenticable

end
