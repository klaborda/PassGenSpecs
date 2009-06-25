class Passgen
  # List of characters for password: *a-z, A-Z, 0-9*
	@@chars = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a)		

	def genPass(len=8)
		(1..len).collect {		
			@@chars[rand(@@chars.size)]
		}.join
	end

	def getPasses(number)
		series = []
		number.times {
			series << genPass
		}	
		series
	end
end
