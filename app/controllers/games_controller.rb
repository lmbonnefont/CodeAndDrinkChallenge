class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    @game.save!

    @player = Player.new
    redirect_to new_user_game_player_path(current_user, @game)
  end

  def index
  end

  def destroy
  end

  private

  def game_params
    params.require(:game).permit(:numberRound)
  end
end
