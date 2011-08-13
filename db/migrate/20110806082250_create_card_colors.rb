class CreateCardColors < ActiveRecord::Migration
  def change
    create_table :card_colors do |t|
      t.integer :order
      t.string :code
      t.string :name
      
      t.timestamps
    end
   
  end
end
