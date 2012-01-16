class Treat

	def indent ( code, level = 0 )
		code.compact!
		@r_code = ""

		code.each do |line|
			if !line.scan( /<\/.*>/ ).empty?
				level -= 1
				add_line( line, level )
			elsif !line.scan( /<[^\/]+>/ ).empty?
				add_line( line, level )
				level += 1
			else
				add_line( line, level )
			end
		end

		@r_code

	end

	def add_line ( line, level )
		@r_code += "#{("\t" * level ) + line}\n"
	end

end