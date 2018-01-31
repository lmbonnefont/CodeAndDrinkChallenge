class BetsController < ApplicationController
  def new
  end

  def create

    bet = Bet.new

    player = bet_params["player"]
    if player != ""
      player = Player.find(player)
      bet.player = player
    end

    bettor = bet_params["bettor"]
    if bettor != ""
      bettor = Bettor.find(bettor)
      bet.bettor = bettor
    end

    shot = bet_params["shot"].to_i
    bet.shot = shot

    @game = Game.find(params[:game_id])
    bet.game_id = @game.id

    if bet.save
      redirect_to user_game_path(current_user, @game)
    else
      render :new
    end

  end

  private

  def bet_params
    params.require(:bet).permit(:shot, :player, :bettor)
  end
end
