class OptionChoicesController < ApplicationController

  def create
  @optionchoice = OptionChoice.new(choice_id: params[:choice_id], option_id: params[:option_id])
  @optionchoice.save
  end
end
