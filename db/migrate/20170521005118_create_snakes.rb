class CreateSnakes < ActiveRecord::Migration[5.1]
  def change
    create_table :snakes do |t|
      t.string :name
      t.string :species
      t.string :age
      t.string :image

      t.timestamps
    end
  end
end
