class Api::V2::AdminController < ApplicationController
    skip_before_action :authorized_user

    def create
        @chef = Chef.find_by(email: admin_params[:email])
        if @chef && @chef.authenticate(admin_params[:password])
          token = encode_token({ chef_id: @chef.id })
            render json: {chef: ChefSerializer.new(@chef), jwt: token },status: :created      
        else
            render json: {error: "Failed to log in"}, status: :not_acceptable
        end 
    end

    private
    def admin_params
        params.require(:admin).permit(:email,:password)
    end
end
