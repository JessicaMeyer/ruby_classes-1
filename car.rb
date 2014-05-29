class Car 

	def initialize 
		puts "the initialize method is running automatically"
	end
	def get_info(my_car)
		@get_info = my_car
		@fuel=10
		@distance=0
		Kernel.puts("I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons left.")
end
	def drive(miles_driven)
		if (miles_driven <= 100)
			Kernel.puts "You're fine on gas for now!"
		else (miles_driven >= 101) 
			Kernel.puts "You might want to fill up soon!"
		end
		@distance=miles_driven

		# Part of exercise before adding the if/else statement
		# @distance=miles_driven
		# @fuel=20
		# Kernel.puts("I'm a car! I have now driven #{@distance} miles and have #{@fuel} left in my tank.")
end
	def fuel_up(gallons_needed)
		@fuel_up=gallons_needed
		@fuel=30
		gallons_needed = @fuel-20
		Kernel.puts "You will need to pay $#{3.5*gallons_needed} to fill up your tank."
end
end

c = Car.new
car_a= Car.new
car_b=Car.new
# c.get_info(2)
car_a.drive(10)
car_b.drive(20)
car_b.drive(105)
car_b.drive(200)
car_a.fuel_up(50)

#Output 
# 2.1.0 :004 > load 'car.rb'
# the initialize method is running automatically
# the initialize method is running automatically
# the initialize method is running automatically
# You're fine on gas for now!
# You're fine on gas for now!
# You might want to fill up soon!
# You might want to fill up soon!
#You will need to pay $35.0 to fill up your tank.
#  => true 

