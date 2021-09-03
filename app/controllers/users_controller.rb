class UsersController < ApplicationController
    def show
        user = User.find_by(id: params[:id])
        render json: user, include: :items, exclude: :user_id
    end
end
