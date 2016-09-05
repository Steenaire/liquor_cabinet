class ApplicationController < ActionController::Base
  
  protect_from_forgery
  helper_method :current_user, :star_array

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def star_array(color1,color2,rating,max_rating)
    stars = []
    rating.times do
      stars << color1
    end
    (max_rating-rating).times do
      stars << color2
    end
    return stars
  end

  after_filter :set_csrf_cookie_for_ng

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end
  
  rescue_from ActionController::InvalidAuthenticityToken do |exception|
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  protected
    def verified_request?
      super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
    end

end
