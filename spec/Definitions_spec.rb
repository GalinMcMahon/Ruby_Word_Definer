require "definitions"
require "rspec"
require "pry"


describe("Definitions") do

  describe("#definition") do
    it("returns entered definition") do
      new_definition = Definitions.new("voom")
      expect(new_definition.definition()).to(eq("voom"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Definitions.all()).to(eq([]))
    end
  end

end
