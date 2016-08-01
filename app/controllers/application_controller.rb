class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery unless: -> { request.format.json? }

  def render_404
    render :file => "#{RAILS_ROOT}/public/404.html",  :status => 404
  end

end
