class ReviewsController < ApplicationController
  before_filter :authenticate_user!
  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.new(params[:review])
    if @review.save
      respond_to do |format|
          format.html { redirect_to code_submission_path(@review.code_submission_id); 
                        flash[:success] = "Thanks for your review"  }
          format.js
      end
    else
      flash[:error] = "Something went wrong"
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update_attributes(params[:review])
      flash[:success] = "You've updated your review"
      redirect_to code_submission_path
    else
      flash[:error] = "Something went wrong"
    end
  end

  def destroy
    Review.find(params[:id]).destroy
    flash[:success] = "You've deleted a review"
    redirect_to code_submission_path
  end
end
