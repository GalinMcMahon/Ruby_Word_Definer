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
end