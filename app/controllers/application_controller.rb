class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  helper_method :current_user, :star_array, :human_time, :visits

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def visits
    if current_user
      return Visit.where(user_id: current_user.id)
    else
      return []
    end
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

  def human_time(timestamp)
    timestamp.strftime("%A, %d %b %Y %l:%M %p")
  end

  # after_filter :set_csrf_cookie_for_ng

  # def set_csrf_cookie_for_ng
  #   cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  # end
  
  # rescue_from ActionController::InvalidAuthenticityToken do |exception|
  #   cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  # end

  # protected
  #   def verified_request?
  #     super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
  #   end

end
