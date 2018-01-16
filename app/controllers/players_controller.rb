class PlayersController < ApplicationController

  def new
  end

  def create
    @player = Player.new(player_params)
    @game = Game.find(params[:game_id])
    @player.game = @game
    @player.save!
    redirect_to user_game_players_path(current_user, @game)
  end

  def index
    #On va chercher les players et les bettors directement dans la vue
  end

  private

  def player_params
    params.require(:bettor).permit(:name, :surname)
  end

end
