class UsersController < ApplicationController 
    # before_action :authorize!, except: [:show]


    def show
        @user = User.find(params[:id])
    end

    def new 
        @user = User.new
        # @user.itineraries.build?
    end

    def create
        @user = User.new(user_params)
        if(@user.save)
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private 

    def user_params(*args)
        params.require(:user).permit(:first_name, :last_name, :username, :location, :gender, :bio, :password_digest)
    end
end