require 'pry'

# puts "Please enter a noun or a noun phrase"

# noun = gets.chomp

# puts "The #{noun} went to sea in a sturdy ship."


class UI
  POS = %i(noun adjective verb adverb object)
  MOT = ["in a boat", "on a bus", "inside a whale", "clinging under a speeding truck"]

  attr_reader :parts_of_speech
  attr_reader :mode_of_transportation

  def initialize()
    @parts_of_speech = {}
  end

  def prompt
    POS.each do | pos |
      puts "Please enter a #{pos}"
      @parts_of_speech[pos] = gets.chomp
    end

  end

  def transport_prompt
    puts "Choose one of the following:\n\n"
    index = 1
    MOT.each do | t |
      puts "#{index.to_s}. #{t}"
      index += 1
    end
    puts "\nby typing the number of your choice:___"
    parts_of_speech[:mode] = MOT[gets.chomp.to_i - 1]


  end
end

class SentenceTemplate

  def insert(pos_hash, str)
    #binding.pry
    pos_hash.keys.each { |key| str.sub!("(#{key})", pos_hash[key]) }
  end
   
end

template_array = ["The (adjective) (noun) suddenly and (adverb) had to (verb) the (object).",
  "The (noun) (verb) over the (object) (mode).",
  "Eat (noun).",
  "I like to (verb) (mode)."]

ui = UI.new
#binding.pry
ui.prompt
ui.transport_prompt
template_array.each { |t| SentenceTemplate.new.insert(ui.parts_of_speech, t)}
puts template_array







