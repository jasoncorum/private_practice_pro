class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone
      t.string :degree
      t.string :university
      t.string :therapeutic_style
      t.integer :years_of_practice
      t.boolean :accepting_new_patients

      t.timestamps
    end
  end
end
