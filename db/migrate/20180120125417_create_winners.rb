class CreateWinners < ActiveRecord::Migration[5.1]
  def change
    create_table :winners do |t|
      t.string :name
      t.string :surname
      t.string :photo
      t.date :date

      t.timestamps
    end
  end
end
