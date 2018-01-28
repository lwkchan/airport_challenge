require_relative 'airport'

class Plane

  attr_reader :current_airport

  def initialize
    @current_airport = nil
  end

  def land(airport)
    airport.planes << self
    @current_airport = airport
  end

  def take_off
    take_off_sequence
    take_off_message
  end

private

  def take_off_sequence
    @current_airport.planes.delete(self)
    @current_airport = nil
  end

  def take_off_message
    print "Plane has left airport"
  end

end
