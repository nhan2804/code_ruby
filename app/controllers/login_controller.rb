class LoginController < ApplicationController
    def index
        @user = Account.find(11)
        session[:user_id] = @user.id 
        render :json=>[@user]
    end
    
end
