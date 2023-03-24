class ChoicesController < ApplicationController
  before_action :set_choice, only: %i[show destroy]

  def index
    @choices = Choice.all
  end

  def show
        @endgame = OptionChoice.where(choice_id: params[:id])
        @options = Option.all

        loop do
          @i = @options.ids.sample
          @k = @options.ids.sample
          if (@choice.options.pluck(:id).include?(@i) == false) && (@choice.options.pluck(:id).include?(@k) == false) && @i != @k
            @optioni = @options.find(@i)
            @optionk = @options.find(@k)
            break
          end
    end


  end

  def edit

    @endgame = OptionChoice.where(choice_id: params[:id])
    @choice = Choice.find(params[:id])
    @options_our = @choice.options.ids
    @options = Option.all

    @options_our.each do |option|
      @k = option
      @optionk = @options.find(@k)
      @i = @options.ids.sample
      @optioni = @options.find(@i)
    end

  end



  def new
  end

  def create
    @choice = Choice.new
    @choice.user = current_user
    @choice.save
    redirect_to choice_path(@choice)
  end



  def update

    @choice.update(choice_params)

  end

  def destroy

    @choice.destroy
    # redirect_to player_bookings_path(@choice), status: :see_other
  end

  # def mychoices
  #   @choices = policy_scope(Choice)
  #   @mychoices = current_user.choices

  # end

  private

  def set_choice
    @choice = Choice.find(params[:id])
  end
end
