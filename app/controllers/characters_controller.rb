class CharactersController < ApplicationController

    def index
        @characters = Character.all
        render json: @characters
    end

    # def create 
    #     @character = Character.find_or_create_by(username: params[:username])
    #     render json: @character
    # end

    def show
        @character = Character.find_by(id: params[:id])
        render json: @character
    end

    def create 
        @character = Character.create(name: params[:name], image: params[:image], starbux: 5, marsbar: 2, user_id: params[:user_id])
        render json: @character
    end

    def edit 
        @character = Character.find_by(id: params[:id])
        @character.update(current_state: params[:current_state])
        render json: @character
    end

end
