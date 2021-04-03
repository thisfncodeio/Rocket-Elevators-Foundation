require 'elevator_media'

describe "ElevatorMedia::Streamer" do
  describe ".getContent" do
    it "returns a string" do
      expect(ElevatorMedia::Streamer.getContent(:city => "Tampa")).to be_instance_of(String)
    end

    it "returns the output as html" do
      expect(ElevatorMedia::Streamer.getContent(:city => "Tampa")).to start_with("<div>").and end_with("</div>")
    end

    context "custom input" do
      it "returns Toronto if provided as city" do
        expect(ElevatorMedia::Streamer.getContent(:city => "Toronto")).to eq("<div>Toronto</div>")
      end

      it "returns Toronto if city and country provided" do
        expect(ElevatorMedia::Streamer.getContent(:city => "Toronto", :country => "CA")).to eq("<div>Toronto</div>")
      end

      it "returns London if entered as city" do
        expect(ElevatorMedia::Streamer.getContent(:city => "London")).to eq("<div>London</div>")
      end
    end

    context "no input" do
      it "return Tampa if no input provided" do
        expect(ElevatorMedia::Streamer.getContent).to eq("<div>Tampa</div>")
      end
    end
    
  end
end
