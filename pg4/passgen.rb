class Passgen
	attr_accessor :passwords
	attr_reader :availChars

  # Initialize number and length isntance variables
	def initialize(num, len, chrList=nil)
	  @length = len
		@numPass = num
		@availChars = chrList
	end

	def length(len)
		@length = len
	end

	def numberOfPasswords(numPass)
		@numPass = numPass
	end

	def setChars(string)
		@availChars = string
	end	

	def genPass
		(1..@length).collect {		
			@availChars[rand(@availChars.size)]
		}.join
	end

	def generate
		@passwords = []
		@numPass.times {
			@passwords << genPass
		}	
		@passwords
	end
end
