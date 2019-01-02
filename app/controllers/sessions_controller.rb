class SessionsController < ApplicationController
    def new
    end

    def index
    end

    def create
        user = User.find_by_email(params[:email])
        if user
            if user.authenticate(params[:password])
                session[:user_id] = user.id
                flash[:errors] = nil
                redirect_to "/songs"
            else
                flash[:errors] = ["Invalid Password"]
                redirect_to "/"
            end
        else
            flash[:errors] = ["There is no user by that email"]
            redirect_to "/"
        end
        
    end

    def destroy
        reset_session
        redirect_to "/"
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end
