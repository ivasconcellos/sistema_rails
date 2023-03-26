class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
	    if resource_name == :user
            "/initial"
	    elsif  resource_name == :admin
            "/admin"
	    end
    end

end
