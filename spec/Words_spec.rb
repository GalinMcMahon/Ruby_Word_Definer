require "definitions"
require "words"
require "rspec"
require "pry"


describe("Definitions") do

  describe("#word") do
    it("returns word") do
      new_word = Words.new("car")
      expect(new_word.word()).to(eq("car"))
    end
  end

  describe(".all") do
    it("is empty at first") do
    expect(Words.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a word to the array of saved words") do
      new_word = Words.new("car")
      new_word.save()
      expect(Words.all()).to(eq([new_word]))
    end
  end

  describe(".clear") do
    it("clears the word array") do
      Words.new("car").save()
      Words.clear()
      expect(Words.all()).to(eq([]))
    end
  end

  describe("#id") do
  it("returns the id of the word") do
    new_word = Words.new("car")
    expect(new_word.id()).to(eq(1))
  end
end


end
