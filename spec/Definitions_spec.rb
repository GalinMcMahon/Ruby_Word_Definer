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

  describe("#save") do
    it("adds a definition to the array of saved definitions") do
      new_definition = Definitions.new("voom")
      new_definition.save()
      expect(Definitions.all()).to(eq([new_definition]))
    end
  end

  describe(".clear") do
    it("clears the definitions array") do
      Definitions.new("voom").save()
      Definitions.clear()
      expect(Definitions.all()).to(eq([]))
    end
  end

  describe("#id") do
  it("returns the id of the definition") do
    new_definition = Definitions.new("voom")
    expect(new_definition.id()).to(eq(1))
    end
  end

  describe(".find") do
  it("returns definition by its id number") do
    new_definition = Definitions.new("voom")
    new_definition.save()
    expect(Definitions.find(new_definition.id())).to(eq(new_definition))
    end
  end

end
