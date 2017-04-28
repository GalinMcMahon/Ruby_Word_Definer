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






end
