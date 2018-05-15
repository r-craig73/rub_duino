class AddKindIntoSensorsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :sensors, :kind, :string
  end
end
