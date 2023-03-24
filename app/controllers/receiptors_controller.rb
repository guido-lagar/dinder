class ReceiptorsController < ApplicationController
  def new
    @choice = Choice.find(params[:choice_id])
  end

  def create
    user = User.find_by(email: params[:receiptor][:email])
    if user.nil?
      user = User.create(email: params[:receiptor][:email], password: 123456)
    end
    receiptor = Receiptor.new(user_id: user.id, choice_id: params[:choice_id], email: :email)
    receiptor.save
    # raise
    redirect_to "/"

    # UserMail.welcome(receiptor).send_now
  end
end
