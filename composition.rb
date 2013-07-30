class Bicycle
  attr_reader :size, :parts

  def intialize(args={})
    @size = args[:size]
    @parts = args[:parts]
  end

  def spares
    parts.spares
  end
end
