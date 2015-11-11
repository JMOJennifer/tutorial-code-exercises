puts "Super Career Changer"

puts """You have given a career change a lot of thought, and are considering programming as a possible switch. 
(Press 1) Start studying programming tutorials online.
(Press 2) Go to some local programming info sessions.
(Press 3) Have an informational interview with a professional programmer.
(Press 4) Take a nap.
"""

print ">"
first_step = $stdin.gets.chomp

if first_step == "1"
	puts "You tell your friend in the industry what you've done so far. They say \"Tutorials are a great start! Did you enjoy programming?\""
	puts "(Press 1) Yes!"
	puts "(Press 2) No."
	puts "(Press 3) I'm still not sure..."
	
	print ">"
	tutorial_decision = $stdin.gets.chomp
	
	if tutorial_decision == "1"
		puts "Your friend says \"Great! You should consider joining a local programming group and see if you can do a group project--that was really fun when I first started. Let me know if I can help--I could even come with you!\""
	
	elsif tutorial_decision == "2" || tutorial_decision == "3"
		puts "Your friend says \"Hmmm. It can be hard at first--it was for me when I first started. You could keep trying to see if it's more fun after some practice? But you know yourself best, and there might be other roles in tech that suit you better if this isn't a good fit.\""
		
	else
		puts "Your friend says \"I'm sorry, Superwoman just flew right over my head! I couldn't hear you...\""

	end
	
elsif first_step == "2"
	puts "You tell your friend in the industry what you've done so far. They say \"Info sessions can be really valuable. Did you like what you heard?\""
	puts "(Press 1) Yes!"
	puts "(Press 2) No."
	puts "(Press 3) I'm not sure..."

	print ">"
	info_session_decision = $stdin.gets.chomp
	
	if info_session_decision == "1"
		puts "Your friend says \"Great! You should start doing programming tutorials or take some classes to try it out for yourself.\""
	
	elsif info_session_decision == "2"
		puts "Your friend says \"Hmmm. If it didn't seem interesting to you, maybe you wouldn't enjoy programming? You could always try some online tutorials though if you want to make sure. Either way, I'm here for you!\""
	
	elsif info_session_decision == "3"
		puts "Your friend says \"Hmmm. If you're still not sure, I'd try doing some online tutorials or take some classes to see if you like it. There can be a lot of information at these sessions, so trying it out and seeing how that goes might be better for you.\""
	
	else
		puts "Your friend says \"I'm sorry, Superwoman just flew right over my head! I couldn't hear you...\""
		
	end
	
elsif first_step == "3"
	puts "You tell your friend in the industry what you've done so far. They say \"It sounds like you got answers for all your questions! Do you think programming is a good fit for you?\""
	puts "(Press 1) Yes!"
	puts "(Press 2) No."
	puts "(Press 3) I'm not sure..."

	print ">"
	info_interview_decision = $stdin.gets.chomp
	
	if info_interview_decision == "1"
		puts "Your friend says \"I'm so glad you were able to speak to someone so informative! I'd be happy to answer any questions you have later on, and give you a list of online programming tutorials to get you started!\""
	
	elsif info_interview_decision == "2"
		puts "Your friend says \"Hmmm. There are lots of different roles in the tech world--if programming isn't interesting to you, maybe look into other options? I'd be happy to introduce you to colleagues of mine with other job duties as their focus!\""
	
	elsif info_interview_decision == "3"
		puts "Your friend says \"I'd love to do online programming tutorials with you if you want, to see if you like it? Keep in mind there are lots of different roles in the tech world--I'd be happy to introduce you to my colleagues with other job duties as their focus!\""
	
	else
		puts "Your friend says \"I'm sorry, Superwoman just flew right over my head! I couldn't hear you...\""
	
	end
	
elsif first_step == "4"
	puts "Procrastinators of the world, unite!...tomorrow."

else
	puts "BLUE SCREEN OF DEATH"
	exit #I was going to move the strings below to the individual if/elsif conditions as needed; my fiance pointed out I could terminate the program with this else condition instead, so I Googled how to do it in Ruby.

end

puts "________________"
puts "One way or another, you're gonna be on your way to something great!"


#To-Do: want to figure out how to let the user choose another option after the "Superwoman" else condition results, without having to re-run the program--maybe make the options a function called again at the end of the "Superwoman" else strings?