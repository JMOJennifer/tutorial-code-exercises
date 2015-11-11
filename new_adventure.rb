require_relative 'character.rb'
require_relative 'die.rb'

puts 'Your name, adventurer?'

name = gets.chomp
user = Character.new
user.adventure
