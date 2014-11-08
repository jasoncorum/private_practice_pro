class Profile < ActiveRecord::Base

	belongs_to :therapist, dependent: :destroy

end

