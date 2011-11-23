# Bootstrap the runtime. This is where we assemble all the classes and objects together
# to form the runtime.
                                            # What's happening in the runtime:
sweet_class = SweetClass.new            #  Class
sweet_class.runtime_class = sweet_class #  Class.class = Class
object_class = SweetClass.new             #  Object = Class.new
object_class.runtime_class = sweet_class  #  Object.class = Class

# Create the Runtime object (the root context) on which all code will start its
# evaluation.
Runtime = Context.new(object_class.new)

Runtime["Class"] = sweet_class
Runtime["Object"] = object_class
Runtime["Number"] = SweetClass.new
Runtime["String"] = SweetClass.new

# Everything is an object in our language, even true, false and nil. So they need
# to have a class too.
Runtime["TrueClass"] = SweetClass.new
Runtime["FalseClass"] = SweetClass.new
Runtime["NilClass"] = SweetClass.new

Runtime["true"] = Runtime["TrueClass"].new_with_value(true)
Runtime["false"] = Runtime["FalseClass"].new_with_value(false)
Runtime["nil"] = Runtime["NilClass"].new_with_value(nil)

# Add a few core methods to the runtime.

# Add the `new` method to classes, used to instantiate a class:
#  eg.: Object.new, Number.new, String.new, etc.
Runtime["Class"].runtime_methods["new"] = proc do |receiver, arguments|
  receiver.new
end

# Print an object to the console.
# eg.: print("hi there!")
Runtime["Object"].runtime_methods["print"] = proc do |receiver, arguments|
	File.open("#{@filename}.html", 'a') do |f|
		f.puts arguments.first.ruby_value
	end
  puts arguments.first.ruby_value
  Runtime["nil"]
end
