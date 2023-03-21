class OptionsController < ApplicationController
  def show
    @options = Option.all
  end
end
