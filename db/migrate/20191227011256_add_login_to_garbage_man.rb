class AddLoginToGarbageMan < ActiveRecord::Migration[6.0]
  def up
    add_column :garbage_men, :login, :string
  end

  def down
    remove_column :garbage_men,:login
  end
end

