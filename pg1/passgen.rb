class Passgen
	def initialize(length=6, number=1)
		@length = length
		@number = number
	end 

	def createPass(len)
		size = len.nil? ? @length : len
		(1..size).collect { "a" }.join
	end

	def passwordList
		@list = []
		@number.times {
			@list << createPass(@length)
		}
		@list
	end

	def to_a
		passwordList
	end
end
