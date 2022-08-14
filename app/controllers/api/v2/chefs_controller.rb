class Api::V2::ChefsController < ApplicationController
    skip_before_action :authorized_user
    before_action :authorize_chef, except: [:create, :index]
    def index
        @chefs=Chef.all
        render json: {chef: ChefSerializer.new(@chefs) },status: :accepted
  
    end
   

    def create 
        @chef=Chef.create(chef_params)
        if @chef.valid?
            render json: {chef: ChefSerializer.new(@chef)},status: :accepted
        else
            render json: {error: "Failed to create Chef"}, status: :not_acceptable
        end
    end

    def update
        @chef=Chef.find(current_chef.id)
        if @chef.update(chef_params)
            render json: {chef: "successfull"}
        else
            render json: {error: "unsuccessfull"},status: :not_acceptable
        end
    end

   

    private
    def chef_params
        params.require(:chef).permit(:name,:email,:password,:bio1,:bio2,:lat,:lng,:address,:images,:avatar)
    end
end
