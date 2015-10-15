puts 'You are in a room with two doors. Which door do you choose: 1 or 2?'
input = gets.chomp.to_i

if input == 1
	puts 'Oh look, it\'s a dragon! Rawr!'
	puts 'Do you want to slay the dragon or chill with it? Press 1 for slayage, press 2 for fun times.'

	input = gets.chomp.to_i

	if input == 1
		puts 'That dragon be dead. Congratulations!'

	elsif input == 2
		puts 'Cool, let\'s watch some Netflix! Ready, set...'

		(1..5).each do |i|
  			puts "#{i}"
  		
  		end
  		puts "Go!"
	else
		puts 'Okay, I can respect you need to decide between these two totally valid options. I\'ll wait.'
		input.gets.chomp.to_i

	end

elsif input == 2
	puts 'You see a ruby ring on the ground. Shiny!'

	if input == 2
		puts 'Does the ring fit on your finger? Y/N?'

		input = gets.chomp
		if input == 'Y' || input == 'y'
			puts 'Keep that ring on your finger. You deserve it!'

		elsif input == 'N' || input == 'n'
			puts 'That\'s okay, just wear it as a necklace!'

		else
			puts 'Okay. You don\'t have to to wear it. I won\'t judge.'
		end

	else
	puts "Dude, those doors aren't going to open themselves. Pick one."
	end
end