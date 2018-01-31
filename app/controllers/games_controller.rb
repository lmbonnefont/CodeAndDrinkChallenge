class GamesController < ApplicationController


  def fame
    if Winner.create(hall_of_fame_params)
      redirect_to root_path
    else
      render :uploadphotowinner
    end
  end


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

  def show
    #on défini le game directement dans le vue à cause des redirections
  end

  def survivorselection
    @game = Game.find(params[:game_id])
    @players = @game.players
  end

  def resultsround
    params["player"]["dies"].shift #étrangement params renvoie un tableau avec un "" en premier élément ... on l'enleve pour n'avoir que les ids des perdants
    @death_id = params["player"]["dies"]
    @game = Game.find(params[:game_id])

    @death_id.each do |id| #destruction du player qui a perdu et création de sa contrepartie en parieur
      player = Player.find(id.to_i)
      bettor = Bettor.new
      bettor.name = player.name
      bettor.surname = player.surname
      bettor.game = @game
      bettor.save!
      #On ne peut pas détruire le player maintenant vu qu'on a besoin des paris de ces joueurs dans la vue ensuite...
    end

    @game.round += 1
    @game.save!
  end

    def uploadphotowinner
      @game = Game.find(params[:game_id])
      @winner = Winner.new
    end

  private

  def game_params
    params.require(:game).permit(:numberRound, :title)
  end

  def hall_of_fame_params
    params.require(:winner).permit(:name, :surname, :date, :photo, :city, :batch)
  end
end
