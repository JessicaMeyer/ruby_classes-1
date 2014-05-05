1.+(7) 			# executing a method does not print anything to the screen

Kernel.puts("Hello World") # ruby class.rb in terminal => Hello World

#PET EXERCISE 

class Pet
	def speak
		Kernel.puts("Woof Woof")
	end

	def eat
		Kernel.puts("I like to #{eat} food")
	end

	def drink
		Kernel.puts("water")
	end
end

dog = Pet.new
dog.speak
dog.eat
dog.drink

#MARKER EXERCISE 

class Marker
	def set_color(my_color)
		@color = my_color
	end

	def write
		Kernel.puts("I am writing with a #{@color} marker")
	end
end

red_marker = Marker.new
green_marker = Marker.new
red_marker.set_color("red")
green_marker.set_color("green")
red_marker.write
green_marker.write

#PET EXERCISE PRACTICE

class Pet
	def food(my_food)
		@food = my_food
	end

	def drink(my_drink)
		@drink = my_drink
		Kernel.puts("I like to drink #{@drink} and eat #{@food}")
	end
end

dog= Pet.new
cat = Pet.new
dog.food("dog food")
cat.food("cat food")
dog.drink("water")
cat.drink("water")
# I like to drink water and eat cat food
# I like to drink water and eat dog food

#SECOND PET EXERCISE

class Pet
	def sound(pet_sound)
		@sound = pet_sound
	end
	def animal(my_pet)
		@animal = my_pet
		Kernel.puts("I am a #{@animal} and I make this sound: #{@sound}.")
end
end

dog= Pet.new
cat = Pet.new
dog.sound("bark")
cat.sound("meow")
dog.animal("dog")
cat.animal("cat")
#I am a dog and I make this sound: bark.
#I am a cat and I make this sound: meow.


#EXTENSIONS
#Convert the following methods to use the send method.

#5*5
5.send(:*,5) #=> 25  

#"omg".upcase
"omg".send(:upcase) #=> OMG

#['a','b','c'].at(1)
['a','b','c'].send(:at,1) #=> "b"

#['a', 'b', 'c'].insert(2, 'o', 'h', 'n', 'o')
['a','b','c'].send(:insert, 2, 'o', 'h', 'n', 'o') #=> => ["a", "b", "o", "h", "n", "o", "c"] 

#{}.size
{}.send(:size) #=> 0

#{character: "Mario"}.has_key?(:character)
{character: "Mario"}.send(:has_key?, :character)

#Convert the following methods to not use the send method.

#6.send(:-, 32)
32-6 #=> 26

#{html: true, json: false}.send(:keys)
{html: true, json: false}.keys #=> [:html, :json]

#"MakerSquare".send(:*, 6)
"Makersquare"*6 #=> "MakersquareMakersquareMakersquareMakersquareMakersquareMakersquare"

#"MakerSquare".send(:split, 'a')
"MakerSquare".split('a') #=> ["M", "kerSqu", "re"] 

#['alpha', 'beta'].send(:[], 3)
array = ["alpha", "beta"]
array[3]
#=> nil
