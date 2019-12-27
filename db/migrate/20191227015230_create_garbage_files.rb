class CreateGarbageFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :garbage_files do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
