class PigLatinizer

  attr_accessor :input

  def to_pig_latin(input)
    input.split(" ").collect {|word| piglatinize(word) }.join(" ")
  end

  def piglatinize(word)
    vowels = ["a","e","i","o","u"]

    if vowels.include?(word[0].downcase)
      "#{word}way"
    else
      i = 0
      until vowels.include?(word[i])
        i += 1
      end
      word = word.split("")
        i.times do
          let = word.shift
          word << let
        end
      word << "ay"
      word.join
    end
  end
end
