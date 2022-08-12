class LikesController < ApplicationController
    # before_action :find_chef
    def index
        @likes=Like.all
        render json: {like: LikeSerializer.new(@like)}
    end
   def create
    @like=current_user.likes.new(like_params)
    # @chef.likes.create(user_id :current_user.id)
        if @like.save
            render json: {chef: "Liked"}
        else
            render json: {error: "Like failed"}
        end
   end

   def destroy
    @like=current_user.likes.find(params[:id])
    chef=@like.chef
        if @like.destroy
            render json: {like: "destroy successfull"}
        else
            render json: {like: "destroy failed"}
        end
   end

   private
   def find_chef
    @chef=Chef.find(like_params)
   end

   def like_params
    # raise params.inspect
    params.require(:like).permit(:chef_id)
   end
end
