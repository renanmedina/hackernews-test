
class ItemFactory
  attr_reader :data
  
  def initialize(attributes)
    @attributes = attributes
  end
  
  def self.call(attributes)
    new(attributes).create
  end 
  def create
    return model.new(@attributes)
  end 
  def model
    Item
  end
end
