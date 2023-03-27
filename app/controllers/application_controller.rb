class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
	    if resource_name == :user
            "/initial"
	    elsif  resource_name == :admin
            "/admin"
	    end
    end

    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters     
        devise_parameter_sanitizer.permit(:sign_up) do |user_params|        
            user_params.permit(:name, :email, :cpf, :profile, :active, :password, :password_confirmation, :current_password)    
        end  
        devise_parameter_sanitizer.permit(:account_update) do |user_params|        
            user_params.permit(:name, :email, :cpf, :profile, :active, :password, :password_confirmation, :current_password)    
        end  

    end


end
