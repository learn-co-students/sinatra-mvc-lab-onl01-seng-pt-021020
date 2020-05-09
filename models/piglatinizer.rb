require 'pry'
class PigLatinizer 
 
#  attr_accessor :text
 
 def piglatinize(text)
    split_text = text.split(" ") #creates the string into an array
    split_text.map! do |t|
     if 
        t[0].match(/[AaEeIiOoUu]/) 
        t + "way"
     else 
        word_arr = t.split(/([aeiou].*)/)
        word_arr[1] + word_arr[0] + "ay"
    end
  end
  split_text.join(" ")
end



end   