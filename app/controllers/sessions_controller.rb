class SessionsController < ApplicationController

    def new
    end

    def create
        form_parameters = params.permit(:username, :password)
        user = User.find_by_username(form_parameters[:username])
        if user && user.authenticate(form_parameters[:password])
            session[:user_id] = user.id
            redirect_to :admin_index
        else
            flash.now[:error] = "Invalid username and password"
            render 'new'
        end
    end
end
