class Course < ApplicationRecord
    attr_reader :name
    has_and_belongs_to_many :users

	
end
