class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def new
    @comment = Comment.new
    respond_to do |format|
      format.js 
    end
  end

  def create
    @comment = current_user.comments.new(params[:comment])
    if @comment.save
      respond_to do |format|

        
        format.html { redirect_to :back;  flash[:success] = "Thanks for your comment" }
        format.js

      end
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
