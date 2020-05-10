class PigLatinizer
  def piglatinize(string)
    words = string.split
    latinized_words = words.collect do |word|
      if word.match?(/^[aeiouAEIOU].*/)
        word + "way"
      else
        if !word.match?(/.*[aeiouAEIOU].*/) and word.match?(/.*[yY].*/)
          word[word.index(/[yY]/)..-1] + word[0..(word.index(/[yY]/) - 1)] + "ay"
        else
          word[word.index(/[aeiouAEIOU]/)..-1] + word[0..(word.index(/[aeiouAEIOU]/) - 1)] + "ay"
        end
      end
    end

    latinized_words.join(' ')
  end

end
