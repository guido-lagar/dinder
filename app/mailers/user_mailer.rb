class UserMailer < ApplicationMailer
  default from: 'olaolaolala49@gmail.com'

  def welcome(receiptor)
    @user = User.find(receiptor.user.id)
    @url  = request.domain + "/choices/#{receiptor.choice}/edit"
    mail(to: @user.email, subject: 'Plan your date')
  end

end
