class PigLatinizer

  def piglatinize(input)
    if input.split(" ").length == 1
      piglatinize_word(input)
    else 
      piglatinize_sentence(input)
    end
  end

  def vowel?(char)
    return true if char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    if vowel?(word[0])
      word += "way"
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      word = word.slice(3..-1) + word.slice(0,3) + "ay"
    elsif !vowel?(word[0]) && !vowel?(word[1])
      word = word.slice(2..-1) + word.slice(0,2) + "ay"
    else
      word = word.slice(1..-1) + word.slice(0) + "ay"
    end
    word
  end

  def piglatinize_sentence(input)
    input.split.map {|word| piglatinize_word(word)}.join(" ")
  end
end

