class Passgen
  # List of characters for password: *a-z, A-Z, 0-9*
	@@chars = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a)		

  # Initialize number and length isntance variables
	def initialize(num, len)
		@number = num
	  @length = len
	end

  # Generate a password of length, _@length_
	# In order to not reinvent the wheel, use a snippet from
  #   http://snippets.dzone.com/posts/show/2137
	def gen_passwd
		(1..@length).collect {		
			@@chars[rand(@@chars.size)]
		}.join
	end

	# Generate #, _@number_, passwords of length, _@length_
	def gen_passwd_list
		@series = []
		@number.times {
			@series << gen_passwd
		}	
		@series
	end

  # Join the list of passwords with a space
	def to_s
		gen_passwd_list
		@series.join(" ")
	end
end
