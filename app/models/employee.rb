class Employee < ActiveRecord::Base
	has_many :photos
	belongs_to :department
	has_one :writeup

	def full_name
		"#{f_name} #{l_name}"
	end
end
