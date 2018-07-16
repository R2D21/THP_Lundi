class OrangeTree
  attr_accessor :height
  def initialize(height)
    @age = 0
    @height = height
  end
end

def convert_to_feet(lenght=1.00)
  return (lenght * 3.28)
end
