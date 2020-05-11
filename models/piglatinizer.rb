class PigLatinizer

    def piglatinize(string) 
        words = string.split(" ")
        @sentence_array = []
        words.select do |word|
            if word.downcase.index(/[aeiou]/) == 0
                new_word = word + "way"
                @sentence_array << new_word
            else
                vowel_index = word.index(/[aeiou]/)
                front_end = word.slice!(0..vowel_index.to_i - 1)
                new_word = word + front_end + "ay"
                @sentence_array << new_word
            end  
        end
        @sentence_array.join(" ")
    end
end