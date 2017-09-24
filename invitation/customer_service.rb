require_relative 'customer_file_processor'

class CustomerService

	def initialize(customers_list_path)
		@customers_list_path = customers_list_path
	end

	def display_customers
		customers_with_in_100_km_in_ascending_user_id.each do |customer|
			puts "user_id = #{customer.user_id} name = #{customer.name}"
		end
	end

	def customers_with_in_100_km
		customers.select{ |customer| customer.distance_to_office <= 100}
	end

	def customers_with_in_100_km_in_ascending_user_id
		customers_with_in_100_km.sort_by(&:user_id)
	end

	private

	def customers
		@customers ||= begin
			processor = CustomerFileProcessor.new(@customers_list_path)
			processor.perform
			processor.customers
		end
	end
end