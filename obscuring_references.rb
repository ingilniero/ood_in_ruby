class ObscuringReferences
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def diameters
    data.collect do |cell|
      cell[0] + (cell[1] * 2)
    end
  end
end


# rim and tire sizes (now in milimeters!) in a 2d array
@data = [ [622, 20], [622, 23], [559,30], [559, 40] ]
