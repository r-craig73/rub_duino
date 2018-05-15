class SensorsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :sensors do |t|
      t.column :name, :string
      t.column :kind, :string
      t.column :description, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
