class Student < ActiveRecord::Base
	has_many :teachs
	has_many :mentors, through: :teachs
end
