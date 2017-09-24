require_relative '../core_extension'

class DistanceCalculator
  EARTH_RADIUS_IN_KM = 6371.00

  def self.distance_in_km(lat_a, lng_a, lat_b, lng_b)
    return self.distance_in_radius(lat_a, lng_a, lat_b, lng_b) * EARTH_RADIUS_IN_KM
  end

	private

	  def self.distance_in_radius(lat_a, lng_a, lat_b, lng_b)
	    delta_latitude = (lat_a - lat_b).to_radian;
	    delta_longitude = (lng_a - lng_b).to_radian;

	    arc_length = Math.sin(delta_latitude/2)**2 + Math.cos(lat_a.to_radian) * Math.cos(lat_b.to_radian) * Math.sin(delta_longitude/2) ** 2
	    distance = 2 * Math.atan2(Math.sqrt(arc_length), Math.sqrt(1-arc_length))

	    return distance
	  end
end