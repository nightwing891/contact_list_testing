class Person < ActiveRecord::Base
	serialize :items, Array
	validates_uniqueness_of :email

	def name
		"#{self.first_name} #{self.last_name}"
	end
end
