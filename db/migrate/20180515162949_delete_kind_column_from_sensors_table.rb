class DeleteKindColumnFromSensorsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :sensors, :kind
  end
end
