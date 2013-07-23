require './wheel'

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @wheel = args[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

  def diameter
    wheel.diameter
  end
end

puts Gear.new( { chainring: 52, cog: 11, wheel: @wheel }).gear_inches
puts Gear.new( { chainring: 52, cog: 11, wheel: @wheel }).ratio
