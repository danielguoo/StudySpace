class Course < ApplicationRecord
	def initialize(name)
		@name = name.upcase
	end
	def getName()
		return @name;
	end
end
