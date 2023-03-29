class ReceiptorsController < ApplicationController
  def new
    @choice = Choice.find(params[:choice_id])
  end

  def create
    user = User.find_by(email: params[:receiptor][:email])
    if user.nil?
      user = User.create(email: params[:receiptor][:email], password: 123456, name: params[:receiptor][:name])
    end
    receiptor = Receiptor.new(user_id: user.id, choice_id: params[:choice_id], name: params[:receiptor][:name], email: params[:receiptor][:email])
    receiptor.save

    redirect_to "/"


  end
end
