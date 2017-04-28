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

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

end
