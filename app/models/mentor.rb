class Mentor < ActiveRecord::Base
	has_many :teachs
	has_many :students, through: :teachs
end
