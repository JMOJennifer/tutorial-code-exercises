class Character

	def initialize

	@experience = 0
	@level = 0
	@health = 10
	@mana = 20
	@role = 'mage'
	@gear = 'simple dress'

	end

	def adventure
	puts "You have arrived!"
	puts ' '
	puts 'You are a mage, because I am a biased developer. You\'re also wearing a dress--I hope that works for you.'
	puts ' '
    puts 'Roll the dice and let\'s see what\'s up! If you roll above a 4 or more you\'re a badass! If you roll below a 4 you\'re still in training'
    puts ' '

    user_die = Die.new
    user_die.roll

		if user_die.roll < 4
			puts 'You rolled ' + user_die.showing.to_s
			puts 'You\'re cleaning the tower, apprentice-style!'
			next_step = 'cleaning'

		elsif user_die.roll >= 4 
			puts 'You rolled ' + user_die.showing.to_s
			puts 'You\'re a BADASS mage, so you\'re mage tanking an ogre. Be proud mage tank, be proud.'
			next_step = 'tanking'

		end

		if next_step == 'tanking'
			if user_die.roll >= 4

				puts 'You rolled ' + user_die.showing.to_s
				kill
				puts "You did great, mage tank of awesomeness!!!!"			
			
			else
				user_hit



			end
		end	
	end

	def kill 
		@experience += 2
	end

	def level
		if @experience % 10 == 0
			puts "Level up!"
			@health += 10
			@level += 1
		else 
			@kill
		end
	end	

	def user_hit
		@health - 1
	end
end