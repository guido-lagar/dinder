class OptionChoicesController < ApplicationController
  @optionchoice = OptionChoice.new(choice_id: @choice.id, option_id: params[:event.target.dataset.optionId])
end
