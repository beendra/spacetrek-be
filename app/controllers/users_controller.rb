class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def create 
        @user = User.find_or_create_by(username: params[:username])
        render json: @user
    end

    def show
        @user = User.find_by(id: params[:id])
        @characters = @user.characters
        render json: @characters  
    end

    def destroy
        @user = User.find_by(id: params[:id])
        @user.characters.destroy_all
        @user.destroy
    end 

end
