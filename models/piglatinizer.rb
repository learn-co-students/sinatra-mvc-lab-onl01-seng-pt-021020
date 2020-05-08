class PigLatinizer

  def piglatinize(word)
    arr1 = word.split(' ')
    arr2 = []
    arr1.map do |w|
      w.split('')
      arr2 << word(w)
    end
    arr2.flatten.join(' ')
  end

  def word(w)
    fl = w[0].downcase
    if vowel?(fl)
      return w.concat("way")
    else
      arr = []
      w.split('').map do |l|
        break if vowel?(l)
        arr << l
      end
      w.sub("#{arr.join}", "").concat(arr.join + "ay")
    end
  end

  def vowel?(letter)
    arr = "aeiou".split('')
    true if arr.include?(letter)
  end
end