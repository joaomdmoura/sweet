$sweet_code = []

Given /I have entered (.*) inline-tag in compiler/ do |tag|
	$sweet_code << tag
end

When /^I compile all those tags to (.*) file$/ do |file|
	File.open("tests/#{file}", 'w') do |f|
  	f.puts $sweet_code.join("\n")
	end
	cmd = IO.popen("sweet -c tests/test.s")
	cmd = cmd.readlines
	puts cmd.join
	File.delete("tests/#{file}")
end


Then /^the result should be all those compiled in (.*) file$/ do |file|
	result = ""
	file_ = File.new("tests/#{file}", "r")
	while (line = file_.gets)
		result += line
	end
	result = result.gsub("<","").gsub(">","").gsub("/","").gsub("\n","").gsub(" ","")
	result.should == $sweet_code.join("")
	File.delete("tests/#{file}")
end