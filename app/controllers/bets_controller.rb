class BetsController < ApplicationController
  def new
    @bet = Bet.new
    @game = Game.find(params[:game_id])
  end

  def create
    player = Player.find(bet_params["player"])
    bettor = Bettor.find(bet_params["bettor"])
    shot = bet_params["shot"].to_i

    @game = Game.find(params[:game_id])

    bet = Bet.new
    bet.player = player
    bet.bettor = bettor
    bet.shot = shot
    bet.game_id = @game.id
    bet.save!


    redirect_to user_game_path(current_user, @game)

  end

  private

  def bet_params
    params.require(:bet).permit(:shot, :player, :bettor)
  end
end
