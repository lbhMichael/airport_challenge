describe Airport do
  describe '#will_land' do
    it "puts a plane into the hangar" do
      subject = Airport.new
      subject.will_land()
      expect(subject.hangar).to include (plane)
    end
end
