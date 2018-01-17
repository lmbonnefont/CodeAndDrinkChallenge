class BettorsController < ApplicationController

  def new
    @bettor = Bettor.new
  end

  def create
    @bettor = Bettor.new(bettor_params)
    @game = Game.find(params[:game_id])
    @bettor.game = @game
    @bettor.save!
    redirect_to user_game_path(current_user, @game)
  end

  private

  def bettor_params
    params.require(:bettor).permit(:name, :surname)
  end
end
