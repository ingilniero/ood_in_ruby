class RevealingReferences
  attr_reader :wheels

  def initalize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect do |wheel|
      diameter(wheel)
    end
  end

  def diameter(wheel)
    wheel.rim + (wheel.tire * 2)
  end

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect do |cell|
      Wheel.new(cell[0], cell[1])
    end
  end
end


# rim and tire sizes (now in milimeters!) in a 2d array
@data = [ [622, 20], [622, 23], [559,30], [559, 40] ]
