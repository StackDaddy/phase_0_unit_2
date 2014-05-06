# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
	end

	def dump  # what should this method return?
		@contents = []
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
	def total_utensils
		@contents.length
	end

	def dishwasher
		@contents.each {|silverware|} silverware.clean_silverware
	end


end



class Silverware
	attr_reader :type
	attr_accessor :clean

# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		@clean = true
	end 

	def put_back




end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
silverware_drawer1 = Drawer.new
spoon = Silverware.new("spoon")
fork = Silverware.new("fork")
silverware_drawer1.add_item(spoon)
silverware_drawer1.add_item(fork) 

puts silverware_drawer1.contents.length == 2

silverware_drawer1.remove_item

puts silverware_drawer1.contents.length == 1

silverware_drawer1.dump 

puts silverware_drawer1.contents.length == 0 








# 5. Reflection 
#Fix1: Adding "end" to the first class.  Fix2: Line 28, added a parameter, item, to the instance method.  
#Fix3:  "rb:84:in `<main>': undefined method `clean_silverware'".  Here, I defined a method. clean_silverware 
#in the Silverware class.  This set the instance variable @clean to true.  Lastly, I added the fork to the drawer, so that fork.eat could be called.
#This is the first time I saw two classes really interact with eachother.  Made me think, a lot.  



