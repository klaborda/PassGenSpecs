class Passgen
  # List of characters for password: *a-z, A-Z, 0-9*
	@@chars = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a)		

	def generate(length=6)
		(1..length).collect {		
			@@chars[rand(@@chars.size)]
		}.join
	end

	def generate_series(num=1, len=6)
		@series = []
		num.times {
			@series << generate(len)
		}	
		@series
	end
end
