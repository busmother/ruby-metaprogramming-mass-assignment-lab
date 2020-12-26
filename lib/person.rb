class Person
  # def initialize(attributes)
  #   attributes.each {|key, value| self.send(("#{key}="), value)}
  # end
  def initialize(attributes)
    attributes.each do |key, value| 
      self.class.attr_accessor(key)
      self.send(("#{key}="), value)
    end
  end
  def name=(name)
    @name
  end
end