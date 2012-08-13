class CodeSubmissionsController < ApplicationController
  before_filter :authenticate_user!, :only => [ :new, :create, :destroy ]

  def index
    @code_submissions = CodeSubmission.order(:created_at).page(params[:page]).per(5)
    @code_submission = CodeSubmission.new
    @random_code = CodeSubmission.all[rand(-10..-1)]
  end

  def new
    @code_submission = CodeSubmission.new
  end

  def create

    @code_submission = current_user.code_submissions.new(params[:code_submission])

    if @code_submission.save
      flash[:success] = "You successfully submitted your code for review!"
      redirect_to code_submission_path(@code_submission)
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def destroy
  end

  def show
    @comment = Comment.new
    @review = Review.new(:code_submission_id => params[:id])
    @reviews = Review.find_all_by_code_submission_id(params[:id])
    @comments = Comment.find_all_by_review_id(params[:id])
    @code_submission = CodeSubmission.find(params[:id])
  end
end
