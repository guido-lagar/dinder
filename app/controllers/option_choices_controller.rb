class OptionChoicesController < ApplicationController

  def create
    @endgame = OptionChoice.where(choice_id: params[:choice_id])
      if  @endgame.length >= 5

        @optionchoice = OptionChoice.new(choice_id: params[:choice_id], option_id: params[:option_id])
        @optionchoice.save
        redirect_to "/choices/#{params[:choice_id]}/receiptors/new"
        return
      end


    @optionchoice = OptionChoice.new(choice_id: params[:choice_id], option_id: params[:option_id])
    @optionchoice.save
    redirect_to choice_path(params[:choice_id])
  end

end
