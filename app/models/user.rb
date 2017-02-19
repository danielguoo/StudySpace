load 'course.rb'
class User < ApplicationRecord
	attr_accessor :firstName, :lastName, :email, :password, :major, :gradYear, :phone 
	def initialize(firstName, lastName, email, password, major, gradYear, facebook = nil, phone = nil)
		@firstName = firstName.capitalize
		@lastName = lastName.capitalize
		@email = email.to_s
		@password = password
		@major = major.capitalize
		@gradYear = gradYear.to_i
		@facebook = facebook
		@phone = phone
		@courses = Array.new
	end

	def fullName()
		return "#{@firstName} #{@lastName}"
	end
	def printCourses()
		print "All courses taken: \n"
		@courses.each do |i|
			puts "#{i.name} "
		end
		print "\n"
	end
	def printUser()
		puts "#{firstName} #{lastName}, #{email}, #{password}, #{major}, #{gradYear}"
	end
	def dumpInfo()
		printUser
		printCourses
	end
	#methods for courses' arrays
	def deleteCourse(courseName)
		@courses.each do |arg|
			if arg.name == courseName
				@courses.delete(arg)
			end
		end
	end
	def addCourse(c)
		@courses << c 
	end
	

end
