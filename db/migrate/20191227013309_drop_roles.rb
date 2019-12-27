class DropRoles < ActiveRecord::Migration[6.0]
  def down
    drop_table :roles
  end
end
