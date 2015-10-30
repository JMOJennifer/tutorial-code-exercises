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
		puts 'You have arrived! A voice booms out across the distance:'
		puts ' '
		puts '"You are a mage, because mages are the strongest class right now!"'
		puts '//Cries for the game devs to balance the classes can be heard in the distance//'
		puts '"You are also wearing a ' + @gear + '--I hope that works for you."'
		puts ' '
	    puts 'Roll the dice and let\'s see what happens!'
	    puts 'If you roll above a 4 or more you\'re a badass! If you roll below a 4 you\'re still in training.'
	    puts ' '

	    user_die = Die.new
	    user_die.roll
	    puts 'You rolled ' + user_die.showing.to_s
	    puts ' '

	   	next_step = 'unknown'

		if user_die.showing < 4

			puts 'You\'re cleaning the tower, apprentice-style! Equip some Mickey Mouse ears and Fantasia it up for a while.'
			puts 'Don\'t worry, you won\'t have to clean forever. Try again!'
			puts ' '
			next_step = 'cleaning'

			while next_step == 'cleaning' do

				puts 'You\'re still cleaning! Keep at it!'
				puts ' '
				user_die.roll
				puts 'You rolled ' + user_die.showing.to_s
				puts ' '

					if user_die.showing >= 4
						next_step = 'tanking'
					end
			end

		end

		if 	user_die.showing >= 4 
			puts 'You\'re a BADASS mage, so you\'re mage tanking an two-headed ogre named Krosh with your barrier spell active.'
			puts 'Be proud mage tank, be proud!'
			puts ' '
			puts 'If you roll a 4 or more you\'ll kill Krosh--one shot!'
			puts ' '
			next_step = 'tanking'

		end

			if next_step == 'tanking'
				@Krosh_alive = true
				user_die.roll
				puts 'You rolled ' + user_die.showing.to_s

				if user_die.showing >= 4			
					victory
				else

					while @health > 0 and @Krosh_alive == true do 

						if user_die.showing >= 4
							puts ' '
							victory

						else
							user_hit
							puts ' '
							puts 'Your barrier failed and you were hit!'
							

							if @health > 0
								puts 'You have ' + @health.to_s + ' health and ' + @mana.to_s + ' mana remaining.'
								puts 'Re-cast your barrier and try again!'
								puts ' '
								user_die.roll
								puts 'You rolled ' + user_die.showing.to_s

							else
								puts 'You died. :( Please play again!'
								puts "**********"
								puts ' '
							end
						end
					end
				end

			end
		end

	def kill
		@Krosh_alive = false
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
		@health -= 1
		@mana -= 2
	end

	def victory
		kill
		puts 'He\'s dead! You did great, mage tank of awesomeness!!!!'
		puts "**********"
		puts ' '	
	end
end

# TO DO: Look into ways for pressing ENTER to trigger the dice roll, instead of automatically generating the complete adventure path