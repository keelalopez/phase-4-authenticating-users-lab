class UsersController < ApplicationController
    def show
        # find a user in the database using the user id form the session hash
        user = User.find(session[:user_id])
        render json: user
    end
end
