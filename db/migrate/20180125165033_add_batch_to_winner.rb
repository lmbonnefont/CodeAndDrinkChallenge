class AddBatchToWinner < ActiveRecord::Migration[5.1]
  def change
    add_column :winners, :batch, :integer
    add_column :winners, :city, :string
  end
end
