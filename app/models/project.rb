class Project < ActiveRecord::Base
	has_many :tasks

	validates :name, presence: true, length: {maximum: 75}
	validates :s_description, presence: true, length: {maximum: 150}
	validates :l_description, presence: true, length: {maximum: 500}
	validates :price, presence: true, numericality: { only_integer: true }
end
