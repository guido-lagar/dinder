class OptionChoicesController < ApplicationController

  def create
    @endgame = OptionChoice.where(choice_id: params[:choice_id])
      if  @endgame.length == 4

        @optionchoice = OptionChoice.new(choice_id: params[:choice_id], option_id: params[:option_id])
        @optionchoice.save
        redirect_to "/choices/#{params[:choice_id]}/receiptors/new"
        return
      end

      if @endgame.length == 9

        @optionchoice = OptionChoice.new(choice_id: params[:choice_id], option_id: params[:option_id])
        @optionchoice.save
        redirect_to "/choices"
        return
      end

    @optionchoice = OptionChoice.new(choice_id: params[:choice_id], option_id: params[:option_id])
    @optionchoice.save
    redirect_to choice_path(params[:choice_id])
  end

end
