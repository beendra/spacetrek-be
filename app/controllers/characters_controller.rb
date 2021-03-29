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

end
