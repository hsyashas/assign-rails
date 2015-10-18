class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :schoolname
      t.integer :years_in_practice

      t.timestamps null: false
    end
  end
end