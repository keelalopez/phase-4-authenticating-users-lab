class SessionsController < ApplicationController
    def create
        # find a user in the database using the username from params
        user = User.find_by(username: params[:username])
        # saves the di to thte session hash
        session[:user_id] = user.id
        render json: user
    end

    def destroy
        # to log out, remove the user id from the session hash and return an empty response with a 204 no content status code
        session.delete :user_id
        head :no_content
    end
end
