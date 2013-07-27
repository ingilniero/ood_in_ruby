class Trip
  attr_reader :bicycles, :customers, :vehicle

  def prepare(mechanic)
    mechanic.prepare_bicycles(bicycles)
  end
end

class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each do |bicycle|
      prepare_bicycle(bicycle)
    end
  end

  def prepare_bicycle(bicycle)

  end
end
