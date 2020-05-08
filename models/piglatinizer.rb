Class PigLatinizer
    
    def piglatinize(text)
        text.split(" ").length == 1 ? pig_latinize_word(text) : pig_latinize_sentence(text)
    end

    def consonant?(letter)
        !letter.match(/[aAeEiIoOuU]/)
    end

    def pig_latinize_word(word)
        if !consonant?(word[0])
            word = word + "way"
        elsif consonant?(word[0] && consonant?(word[1]) && consonant?(word[2])
            word = word.slice(3..-1) + word.slice(0,3) + "ay"
        elsif consonant?(word[0]) && consonant?(word[1])
            word = word.slice(2..-1) + word.slice(0,2) + "ay"
        else
            word = word.slice(1..-1) + word.slice(0) + "ay"
        end
    end
  
    def pig_latinize_sentence(sentence)
        sentence.split.collect {|word|pig_latinize_word(word)}.join(" ")
    end
 
end
