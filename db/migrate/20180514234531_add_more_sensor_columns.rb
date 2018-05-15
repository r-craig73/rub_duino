class AddMoreSensorColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :sensors, :pin, :integer
    add_column :sensors, :board, :string
  end
end
