class CreateDirectories < ActiveRecord::Migration
  def change
    create_table :directories do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    
    add_index :directories, :user_id
  end
end
