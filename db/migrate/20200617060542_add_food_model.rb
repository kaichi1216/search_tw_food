class AddFoodModel < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :location
      t.string :url 
      t.string :description

      t.timestamps
    end

    add_index :foods, :name
  end
end
