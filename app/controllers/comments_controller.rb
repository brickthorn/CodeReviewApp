class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(params[:comment])
    if @comment.save
      flash[:success] = "Thanks for your comment"
      redirect_to :back
    else
      flash[:error] = "Something went wrong"
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    flash[:success] = "You've deleted a comment"
    redirect_to code_submission_path
  end
end
