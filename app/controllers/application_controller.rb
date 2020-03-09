require 'authenticated_system'

class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  include AuthenticatedSystem
  include Authorization

  protect_from_forgery
  layout 'application'

  hide_action :breadcrumbs

  def breadcrumbs
    []
  end

  # Start of declaration_authorization-related code
  # before_filter :current_user=

  def access_denied
    alias new_session_path login_path
    super
  end

  protected
  # There are multiple ways of handling authorization failures.
  # One is to implement a permission denied method as shown below.
  # If none is defined, either a simple string is displayed
  # to the user ("You are not allowed...", default) or the authorization
  # exception is raised.
  #
  #def permission_denied
  #  respond_to do |format|
  #    flash[:error] = 'Sorry, you are not allowed to view the requested page.'
  #    format.html { redirect_to(:back) rescue redirect_to('/') }
  #    format.xml  { head :unauthorized }
  #    format.js   { head :unauthorized }
  #  end
  #end

  # set_current_user sets the global current user for this request.  This
  # is used by model security that does not have access to the
  # controller#current_user method.  It is called as a before_filter.
#  def current_user=(current)
#    Authorization.current_user = current
#  end

end
