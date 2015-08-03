class String
  define_method(:title_case) do
    final_case = []
    ignored_words = ['from', 'to', 'the', 'on', 'in', 'and', 'for', 'a', 'or']
    letter_position = 0
    split_sentence = self.split()

    split_sentence.each() do |word|
      word.downcase!()
    end
    split_sentence.join(" ")

    split_sentence.each() do |word|
      if ignored_words.include?(word) && word.!=(split_sentence[0])
        final_case.push(word)
      else
        final_case.push(word.capitalize!())
      end
    end
    final_case.join(" ")
  end
end
