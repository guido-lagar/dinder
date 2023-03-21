class ChoicesController < ApplicationController
  before_action :set_choice, only: %i[show destroy]
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @choices = policy_scope(Choice)
  end

  def show
    authorize @choice
  end

  def new
    @choice = Choice.new
    authorize @choice
  end

  def create
  
  end

  def destroy
    authorize @choice
    @choice.destroy
    redirect_to player_bookings_path(@choice), status: :see_other
  end

  def mychoices
    @choices = policy_scope(Choice)
    @mychoices = current_user.choices
    authorize @mychoices
  end

  private

  def set_choice
    @choice = Choice.find(params[:id])
  end
end
