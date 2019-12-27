class AddRoleToGarbageMan < ActiveRecord::Migration[6.0]
  def up
    add_column :garbage_men, :role_id, :integer, default: 2
  end

  def down
    remove_column :garbage_men,:role_id
  end
end
