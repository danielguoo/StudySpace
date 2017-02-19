class Course < ApplicationRecord
    attr_reader :name
	def initialize(name)
		@name = name.upcase
		@students = Array.new
	end
	
end
