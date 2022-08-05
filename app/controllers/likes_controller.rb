class LikesController < ApplicationController
    before_action :find_chef
    # before_action :authenticate
   def create
    @chef.likes.create(user_id :current_user.id)
        if @chef
            render json: {chef: "Liked"}
        else
            render json: {error: "Like failed"}
        end
   end

   private
   def find_chef
    @chef=Chef.find(params[:id])
   end
end
