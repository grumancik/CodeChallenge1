require 'pry'

# puts "Please enter a noun or a noun phrase"

# noun = gets.chomp

# puts "The #{noun} went to sea in a sturdy ship."


class UI
  POS = %i(noun adjective verb adverb object)

  attr_reader :parts_of_speech

  def initialize()
    @parts_of_speech = {}
  end  

  def prompt
    POS.each do | pos | 
      puts "Please enter a #{pos}"
      @parts_of_speech[pos] = gets.chomp
    end  
  end  
end  

module SentenceTemplate

  def self.insert(pos_hash, str)
    pos_hash.keys.each { |key| str.sub!("(#{key})", pos_hash[key]) }
  end
   
end

template_array = ["The (adjective) (noun) suddenly and (adverb) had to (verb) the (object).",
  "The (noun) (verb) over the (object).",
  "Eat (noun)."]

ui = UI.new
ui.prompt
template_array.each { |t| SentenceTemplate.insert(ui.parts_of_speech, t)}
puts template_array.inspect






