class AddTherapistIdToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :therapist_id, :integer
  end
end
