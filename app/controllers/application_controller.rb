class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
  
    def client
        @client ||= SalesforceDesafio::Client.new(
                        current_user.provider,
                        current_user.uid,
                        current_user.name,
                        current_user.oauth_token,
                        current_user.refresh_token,
                        current_user.instance_url,
                        SALESFORCE_APP_ID,
                        SALESFORCE_APP_SECRET
        )
    end
    helper_method :client
  
end
