class Player
  def initialize(starting_location)
    @location = starting_location
  end

  def location
    Noun.location @location
  end

  def move_to(destination)
    @location = destination
  end
end