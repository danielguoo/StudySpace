class Course < ApplicationRecord
        attr_reader :name
	def initialize(name)
		@name = name.upcase
	end
end
