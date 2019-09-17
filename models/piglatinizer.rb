class PigLatinizer
    def piglatinize(input)
        words = input.split(" ")
        new = []
        words.each do |word|
            chars = word.split("")
            move = ''
            count = 0
            chars.each do |char|
                if char.scan(/[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]/).count > 0
                    move = "#{move}#{char}"
                    count += 1
                else
                    break
                end
            end

            if count == 0
                new.push("#{word}way")
            else 
                new.push(word = "#{word[count..(word.length - 1)]}#{move}ay")
            end
        end

        new.join(' ')
    end 
end

