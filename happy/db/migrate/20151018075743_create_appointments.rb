class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :pet, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true
      t.string :customer
      t.date :date_of_visit
      t.string :reminder
      t.text :reason

      t.timestamps null: false
    end
  end
end
