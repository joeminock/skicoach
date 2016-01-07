class Project < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders]

	def should_generate_new_friendly_id?
    	name_changed?
  	end

	has_many :tasks

	validates :name, presence: true, length: {maximum: 40}
	validates :s_description, presence: true, length: {maximum: 150}
	validates :l_description, presence: true, length: {maximum: 500}
	validates :price, presence: true, numericality: { only_integer: true }

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  	end
end
