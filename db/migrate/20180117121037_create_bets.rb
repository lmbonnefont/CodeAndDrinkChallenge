class CreateBets < ActiveRecord::Migration[5.1]
  def change
    create_table :bets do |t|
      t.references :player, foreign_key: true
      t.references :bettor, foreign_key: true
      t.integer :shot

      t.timestamps
    end
  end
end
