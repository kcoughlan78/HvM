class UserMailer < ActionMailer::Base
  default from: "registration@example.com"

  def reg_email(user)
    @user = user
    @url = "localhost:3000/login"
    mail(:to => user.email, :subject => "Congratulations you are all signed up to Hurlers vs Monsters")
  end
end
