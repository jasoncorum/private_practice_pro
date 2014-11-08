class AddTherapistIdToProfile < ActiveRecord::Migration
  def change
  	add_column :profiles, :therapist_id, :integer
  end
end
