class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @code_submissions = CodeSubmission.find_all_by_user_id(params[:id])
        @reviews = Kaminari.paginate_array((@code_submissions.collect { |submission| submission.reviews }).flatten).page(params[:page]).per(5)
    end
    
end
