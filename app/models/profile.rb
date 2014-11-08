class Profile < ActiveRecord::Base

	belongs_to :therapist, dependent: :destroy

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	def self.search_profile(param)
		where('zip LIKE :q', q: param)
	end

end