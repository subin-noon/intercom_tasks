require_relative '../../invitation/distance_calculator.rb'

describe DistanceCalculator do

  it "should return 0.0 when same coordinates are passed" do

    lat_a = 52.986375
    long_a = -6.043701

    lat_b = 52.986375
    long_b = -6.043701

    distance_in_km = DistanceCalculator.distance_in_km(lat_a, long_a, lat_b, long_b)

    expect(distance_in_km).to eql(0.0)
  end


  it "should return correct distance in KM" do 
    lat_a = 51.885
    long_a = 0.235

    lat_b = 49.008
    long_b = 2.549

    distance_in_km = DistanceCalculator.distance_in_km(lat_a, long_a, lat_b, long_b)

    expect(distance_in_km).to eql(359.3823602146921)
  end

end