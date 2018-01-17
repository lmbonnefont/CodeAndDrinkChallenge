class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :round, default: 0
      t.references :user

      t.timestamps
    end
  end
end
