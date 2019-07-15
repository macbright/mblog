class Admin::ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    layout 'admin/application'

    helper_method :current_user

    private 
        def current_user
            @current_user ||=User.find(session[:user_id]) if session[:user_id]
        end 
    def verify_logged_in
        unless current_user 
            redirect_to admin_login_path
        end
    end 
end
