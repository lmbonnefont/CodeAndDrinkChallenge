class AddDiesToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :dies, :boolean, default: false
  end
end
