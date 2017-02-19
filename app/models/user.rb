load 'course.rb'
class User < ApplicationRecord
	
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

	def getFirstName()
		return @firstName
	end
	def setFirstName(s)
		@firstName = s
	end
	def getLastName()
		return @lastName
	end
	def setName(n)
		@name = n
	end

	def getMajor()
		return @major
	end
	def setMajor(n)
		@major = n
	end

	def getGradYear()
		return @gradYear
	end
	def setGradYear(n)
		@gradYear = n
	end
	def getFacebook()
		return @facebook
	end
	def setFacebook(n)
		@facebook = n
	end
	def getEmail()
		return @email
	end
	def setEmail(n)
		@email = n
	end
	def getPhone()
		return @phone
	end
	def setPhone(n)
		@phone = n
	end
	def getPassword()
		return @password
	end
	def setPassword(s)
		@password = s 
	end
	def printCourses()
		print "All courses taken: \n"
		@courses.each do |i|
			puts "#{i.getName} "
		end
		print "\n"
	end
	def printUser()
		puts "#{getFirstName} #{getLastName}, #{getEmail}, #{getPassword}, #{getMajor}, #{getGradYear}"
	end
	def dumpInfo()
		printUser
		printCourses
	end
	#methods for courses' arrays
	def deleteCourse(courseName)
		@courses.each do |arg|
			if arg.getName == coursName
				@courses.delete(arg)
			end
		end
	end
	def addCourse(c)
		@courses << c 
	end
	

end
