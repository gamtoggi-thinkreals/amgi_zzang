class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :word
      t.string :mean
      t.integer :card_color_id
      t.integer :directory_id

      t.timestamps
    end            
    add_index :cards, :card_color_id
    add_index :cards, :directory_id
  end
end
