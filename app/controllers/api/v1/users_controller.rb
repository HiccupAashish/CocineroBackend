class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized_user, only: [:create,:user_info]
    before_action :authorize_chef, only:[:user_info]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        @user=User.create(user_params)
        if @user.valid?
            render json: {user: UserSerializer.new(@user)},status: :created
        else
            render json: {error: "Failed to create User"}, status: :not_acceptable
        end
    end
    
    def user_info
        @user=User.find(params[:id])
        render json: {user: UserSerializer.new(@user)}
    end

    private
    def user_params
      params.require(:user).permit(:username,:email, :password, :bio, :avatar)
    end

  
 
end
