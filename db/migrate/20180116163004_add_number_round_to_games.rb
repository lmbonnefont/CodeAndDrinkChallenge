class AddNumberRoundToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :numberRound, :integer
  end
end
