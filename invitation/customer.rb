require_relative 'distance_calculator'

class Customer

	INTERCOM_LATITUDE = 53.339428
	INTERCOM_LONGITUDE = -6.257664

	attr_reader :name, :user_id, :longitude, :latitude

	def initialize(options)
		@name = options['name']
		@user_id = options['user_id'].to_i
		@latitude = options['latitude'].to_f
		@longitude = options['longitude'].to_f
	end


	def distance_to_office
		@distance ||= DistanceCalculator.distance_in_km(INTERCOM_LATITUDE, INTERCOM_LONGITUDE, @latitude, @longitude)
	end

end