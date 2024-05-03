class SessionsController < ApplicationController
    def new
    end

    def create
        if user = User.authenticate_by(email: params[:email], password: params[:password])
            login user
            redirect_to root_path, notice: "You have been logged in."
        else
            flash.now[:alert] = "Invalid email or password."
            render :new, status: :unprocessable_entity
        end
    end

    
    def destroy
        logout current_user
        redirect_to root_path, notice: "You have been logged out."
    end
end