class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @reviews = Kaminari.paginate_array(Review.find_all_by_user_id(params[:id])).page(params[:page]).per(5)
    end
    
end
