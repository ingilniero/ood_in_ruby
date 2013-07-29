class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args = {})
    @size = args[:size]
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    raise NotImplementedError,
      "This #{ self.class } cannot respond to: 'default_tire_size' "
  end

  def spares
    {
      tire_size: tire_size,
      chain: chain
    }
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  def initialize(args)
    @tape_color = args[:tape_color]
    super(args)
  end

  def default_tire_size
    '23'
  end

  def spares
    super.merge(tape_color: tape_color)
  end
end

road_bike = RoadBike.new size: 'M', tape_color: 'red'
puts road_bike.tire_size
puts road_bike.chain

class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
    super(args)
  end

  def default_tire_size
    '2.1'
  end

  def spares
    super.merge(rear_shock: rear_shock)
  end
end

mountain_bike = MountainBike.new size: 'S', front_shock: 'Manitou', rear_shock: 'Fox'
puts mountain_bike.tire_size
puts mountain_bike.chain

class RecumbentBike < Bicycle
  attr_reader :flag

  def initialize(args)
    @flag = args[:flag]
  end

  def default_chain
    '9-speed'
  end

  def default_tire_size
    '28'
  end

  def spares
    super.merge({flag: flag})
  end
end

bent = RecumbentBike.new flag: 'tall and orange'
puts bent.spares
