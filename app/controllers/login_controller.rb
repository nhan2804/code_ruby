class LoginController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        # @name = Account.where(user:params[:username]).first()
        @user = Account.find(11)
        
        session[:user_id] = @user.id 
        render :json=>[@user]
        
    end
    
end
