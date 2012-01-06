$sweet_code = []

Given /^select the (.*) from (.*) folder$/ do |file, folder|
	File.open("#{folder}/#{file}", "r") do |infile|
		while (line = infile.gets)
			$sweet_code << "#{line}"
		end
	end
end

When /^I compile it$/ do
	File.open("tests/test.s", 'w') do |f|
  	f.puts $sweet_code
	end
	cmd = IO.popen("sweet -c tests/test.s")
	cmd = cmd.readlines
	puts cmd.join
	File.delete("tests/test.s")
end

Then /^the result should be equal the already compiled (.*) file from (.*) folder$/ do |file, folder|
  result = ""
	original = ""
	file_ = File.new("tests/test.html", "r")
	while (line = file_.gets)
		result += line
	end
	file_ = File.new("#{folder}/#{file}", "r")
	while (line = file_.gets)
		original += line
	end
	File.delete("tests/test.html")
	original = original.gsub("\t","")
	$sweet_code = []
	result.should == original
end