class UserMailer < ActionMailer::Base
  default from: "coderedux@example.com"

  def welcome_email(user)
    @user = user
    @url  = "http://afternoon-stream-7185.herokuapp.com/users/sign_in"
    mail(:to => user.email, :subject => "Welcome to CodeRedux")
  end

  def review_email(user)
    @user = user
    @url  = "http://afternoon-stream-7185.herokuapp.com/users/sign_in"
    mail(:to => user.email, :subject => "Review from CodeRedux")
  end

end
