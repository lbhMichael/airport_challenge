class Airport
  def initialize
   @hangar = []
  end

  def will_land(plane)
    fail "theres no space" if @hangar.length() >= 5
    @hangar << plane
  end

  def hangar
  @hangar
  end

  def take_off(plane)
    @hangar.delete(plane)
  end

  def max_capacity
  #  @hangar.length() < 6 ? @hangar << plane : fail "Theres no space"
  end
end
