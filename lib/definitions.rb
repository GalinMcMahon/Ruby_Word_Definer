class Definitions
  @@definitions = []

  define_method(:initialize) do |definition|
  @definition = definition
  # @id = @@definition.length().+(1)
  end

  define_method(:definition) do
  @definition
  end
end
