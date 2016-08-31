class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  helper_method :current_user

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
end
