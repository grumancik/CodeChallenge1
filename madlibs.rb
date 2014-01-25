require 'pry'

# puts "Please enter a noun or a noun phrase"

# noun = gets.chomp

# puts "The #{noun} went to sea in a sturdy ship."

parts_of_speech = { :noun => "",
  :adjective => "",
  :verb => "",
  :adverb => "",
  :object => ""}

  parts_of_speech.each do |part, answer| 
   puts "Please enter a #{part.to_s}"
    parts_of_speech[part] = gets.chomp
  end

  binding.pry

  puts "The #{parts_of_speech[:adjective]} #{parts_of_speech[:noun]} suddenly and #{parts_of_speech[:adverb]} had to #{parts_of_speech[:verb]} the #{parts_of_speech[:object]}."
