1.+(7) 			# executing a method does not print anything to the screen

Kernel.puts("Hello World") # ruby class.rb in terminal => Hello World

#PET EXERCISE 

class Pet
	def speak(sound)
		puts "I make this #{sound}"
	end

	def eat(food)
		puts "I like to eat #{food}"
	end

	def drink(drink)
		puts "I drink #{drink}"
	end
end

dog = Pet.new
dog.speak("hi")
dog.eat("dog food")
dog.drink("water")

#another pet exercise

class Pet
	attr_accessor :speak, :eat, :drink
	def initialize(speak, eat, drink)
		@speak=speak
		@eat=eat
		@drink=drink
	end
	def speak
		@speak
	end
	def eat
		@eat
	end
	def drink
		@drink
		Kernel.puts "I make this #{@speak}, I like to eat #{@eat}, and this is what I drink: #{@drink}."

	end
end

dog=Pet.new("ruff ruff", "dog food", "water yo")
puts dog.speak
puts dog.eat
puts dog.drink


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

#question from technical interview prep on classes

class Car
	def color(car_color)
		@color = car_color
	end
	def repaint_count(paint)
		@repaint_count = paint
		Kernel.puts("This car color is #{@color} and it's been repainted #{@repaint_count} times.")
end
end

c = Car.new
c.color("red")
c.repaint_count(5)

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