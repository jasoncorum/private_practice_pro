class AddFieldsToTherapist < ActiveRecord::Migration
  def change
    add_column :therapists, :first_name, :string
    add_column :therapists, :last_name, :string
    add_column :therapists, :address_one, :string
    add_column :therapists, :address_two, :string
    add_column :therapists, :city, :string
    add_column :therapists, :state, :string
    add_column :therapists, :zip, :integer
    add_column :therapists, :phone, :integer
    add_column :therapists, :degree, :string
    add_column :therapists, :university, :string
    add_column :therapists, :therapeutic_style, :string
    add_column :therapists, :years_of_practice, :integer
    add_column :therapists, :accepting_new_patients, :boolean
  end
end
