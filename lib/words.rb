class Words
  @@words = []

  define_method(:initialize) do |word|
    @word = word
    @id = @@words.length().+(1)
    @all_words = []
  end

  define_method(:word) do
    @word
  end

end
