class Destination < ActiveRecord::Base
	has_many :activities
	has_many :users
end
