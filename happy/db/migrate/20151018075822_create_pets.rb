class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :animal
      t.string :breed
      t.integer :age
      t.integer :weight
      t.date :date_last

      t.timestamps null: false
    end
  end
end
