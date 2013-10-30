class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def render_permission_error
  	render file: 'public/render_permission_error', status: :error, layout: false
  end
end
