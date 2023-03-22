class OptionsController < ApplicationController
  def show
    @choice = Choice.new
    @options = Option.all
  end
end
