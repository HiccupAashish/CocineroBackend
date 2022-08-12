class CommentsController < ApplicationController
    skip_before_action :authorized_user
    # before_action :authorize_chef, except: [:index]
    def index
        comments=Comment.all
        render json: comments, only: [:user_id,:chef_id,:comment,:id]
    end
    
    def chef_comments
        chef=Chef.find(params[:id])
        comments=chef.comments
        render json:  comments
    end

    def create
        @user=User.find(current_user.id)
        @comment=@user.comments.create(comment_params)
        if @comment
            render json: {comment: @comment}
        else
            render json: {error: "comment not saved"}
        end
    end

    def destroy
        @comment=Comment.find(params[:id])
        @comment.destroy
    end

    private
    def comment_params
        
        params.require(:comment).permit(:comment,:chef_id)
    end
end
