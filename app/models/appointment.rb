class Appointment < ActiveRecord::Base

	belongs_to :therapist, dependent: :destroy

end
