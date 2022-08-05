class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized_user, only: [:create]

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

    private
    def user_params
      params.require(:user).permit(:username,:email, :password, :bio, :avatar)
    end
 
end
