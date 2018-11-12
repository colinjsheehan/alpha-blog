class UsersController < ApplicationController
    def new 
        @user = User.new
    end
 # we know the top level key is going to be user   
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Welcome to TaskMaster #{@user.username}"
            redirect_to articles_path
        else
            render 'new'
        end
    end
    
    def user_params
        params.require(:user).permit(:username,:email, :password)
    end
end 