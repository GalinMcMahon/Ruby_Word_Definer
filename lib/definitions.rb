class Definitions
  @@definitions = []

  define_method(:initialize) do |definition|
  @definition = definition
  @id = @@definitions.length().+(1)
  end

  define_method(:definition) do
  @definition
  end

  define_singleton_method(:all) do
    @@definitions
  end


end
