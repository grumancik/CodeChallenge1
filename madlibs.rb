require 'pry'

# puts "Please enter a noun or a noun phrase"

# noun = gets.chomp

# puts "The #{noun} went to sea in a sturdy ship."
class UI
  def prompt
    parts_of_speech = { :noun => "",
      :adjective => "",
      :verb => "",
      :adverb => "",
      :object => ""}
     

    parts_of_speech.each do | part, answer | 
      puts "Please enter a #{part.to_s}"
      parts_of_speech[part] = gets.chomp
    end
  end  
end  


class SentenceTemplate

  def insert do 
    parts_of_speech[]

  def initialize()


    template_array = ["The #{parts_of_speech[:adjective]} #{parts_of_speech[:noun]} suddenly and #{parts_of_speech[:adverb]} had to #{parts_of_speech[:verb]} the #{parts_of_speech[:object]}.",
      "The #{parts_of_speech[:noun]} #{parts_of_speech[:verb]} over the #{parts_of_speech[:object]}.",
      "Eat #{parts_of_speech[:noun]}."]

    template_array.each do | template |
      binding.pry
      puts template
    end
end





