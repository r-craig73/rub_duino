class AddMeasuresTable < ActiveRecord::Migration[5.2]
  def change
    create_table :measures do |t|
      t.column :value, :integer
      t.column :sensor_id, :integer

      t.timestamps
    end
  end
end
