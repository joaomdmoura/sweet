class Files

	def includes(code)
		includes = code.scan(/(((\t)+)?<~([ .\/=-_a-zA-Z0-9]+))/)
		includes.uniq!
		includes.each do |include_|
			result = ""
			file_ = include_[3].gsub(" ", "")
			indent = (include_[1].nil?) ? 0 : include_[1].count("\t") 
			indent = "\t" * indent
			file_ = File.new("#{$path}#{file_}", "r")
			while (line = file_.gets)
				result += "#{indent}#{line}"
			end
			code = code.gsub(/^#{include_[0]}$/, result)
		end
		return code
	end

end