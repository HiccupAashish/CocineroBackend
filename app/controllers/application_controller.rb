class ApplicationController < ActionController::API
    before_action :authorized


    def encode_token(payload)
        JWT.encode(payload, 'my_s3cr3t')   
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
          token=auth_header.split(' ')[1]
          begin
           JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
          rescue
            JWT::DecodeError
            nil
          end
        end
    end

    def current_user
        if decoded_token
            user_id=decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def current_chef
        if decoded_token
            chef_id=decoded_token[0]['chef_id']
            # raise chef_id.inspect
            @chef=Chef.find_by(id: chef_id)
        end
    end
    
    def user_logged_in?
        !!current_user
    end
    
    def chef_logged_in?
        !!current_chef
    end

    def authorized_user
        render json: { message: 'Please log in' }, status: :unauthorized unless user_logged_in?
    end

    def authorize_chef
        render json: { message: 'Please log in' }, status: :unauthorized unless chef_logged_in?
    end
end
