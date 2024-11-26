class UsersController < ApplicationController

    def index
        @user= User.all 
    end 



    def new 
        @user = User.new
    end 

    def create 
        puts "*************entro al metodo create************"
       @user = User.new(user_params)

        if @user.save
            redirect_to new_user_path
        else 
            render :new, status: :unprocessable_entity
        end 
    end 

    def edit
         Rails.logger.debug "ID recibido: #{params[:id]}"
        @user = User.find(params[:id])
    end 

    def update 
        @user = User.find(params[:id])

        if @user.update(use_params)
            redirect_to @user
        else 
            reder :new, status::unprocessable_emtity
        end 
    end 


private 
    def user_params
        p "************entro al metodo params**********"
        p params.expect(user:[:username, :email, :password])
        
    end 


end
