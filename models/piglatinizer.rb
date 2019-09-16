class PigLatinizer

  def piglatinize(phrase)
    phrase.split(" ").map {|word| piglatinize_word(word)}.join(" ")
  end

  def piglatinize_word(text)
    if /^[aeiou]/i.match(text)
      "#{text}way"
    else
      parts = text.split(/([aeiou].*)/)
      "#{parts[1]}#{parts[0]}ay"
    end
  end

end