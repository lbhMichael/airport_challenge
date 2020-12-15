require_relative '../lib/airport_challenge.rb'

describe Airport do
  describe '#will_land' do
    it "puts a plane into the hangar" do
      subject = Airport.new
      plane = 'SAD12l3'
      subject.will_land(plane)
      expect(subject.hangar).to include plane
    end
  end

  describe '#take_off' do
    it "removes a plane from the hangar" do
      subject = Airport.new
      plane = 'SAD12l3'
      subject.will_land(plane)
      subject.take_off(plane)
      expect(subject.hangar).not_to include plane
    end
  end

  describe '#max_capacity' do
    it "casd" do
      subject = Airport.new
      plane = 'SAD12l3'
    5.times {subject.hangar << plane}
     expect{subject.will_land(plane)}.to raise_error "theres no space"
    end
  end
end
