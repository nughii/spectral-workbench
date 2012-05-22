# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

include AuthenticatedSystem

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  def admin
    APP_CONFIG["password"] == params[:password]
  end

end
