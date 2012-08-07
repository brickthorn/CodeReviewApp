class CodeSubmissionsController < ApplicationController

  def index
    @code_submissions = CodeSubmission.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
