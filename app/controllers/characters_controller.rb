class CharactersController < ApplicationController
    # before_action :char_params, :only => [:update]
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
        @character = Character.create(name: params[:name], image: params[:image], starbux: params[:starbux], marsbar: params[:marsbar], user_id: params[:user_id], current_state: params[:current_state], lives: params[:lives])
        
        render json: @character
    end

    def update 
        @character = Character.find_by(id: params[:id])
        @character.update(current_state: params[:current_state], lives: params[:lives], marsbar: params[:marsbar], starbux: params[:starbux])
        byebug
        render json: @character
    end

    def destroy
        @character = Character.find_by(id: params[:id])
        @character.destroy
        render json: @character
    end 

    # private
    
    # def char_params
        
    # end

end
