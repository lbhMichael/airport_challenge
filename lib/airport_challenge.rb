class Airport
  def initialize
    @hangar = []
  end

  def will_land(plane)
    @hangar << plane
  end

  def hangar
   @hangar 
  end

  def take_off(plane)
    @hangar.delete(plane)
  end
end
