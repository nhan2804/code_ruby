class LoginController < ApplicationController
    def index
        @name = Account.where(user:params[:username]).first()
        # @user = Account.find(11)
        session[:user_id] = @name.id 
        render :json=>[@name]
    end
    
end
