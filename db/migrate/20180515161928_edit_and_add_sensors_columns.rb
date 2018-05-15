class EditAndAddSensorsColumns < ActiveRecord::Migration[5.2]
  def up
   change_column :sensors, :kind, :integer
 end

 def down
   change_column :sensors, :kind, :string
 end
end
