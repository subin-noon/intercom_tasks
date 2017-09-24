require 'json'
require_relative 'customer'

class CustomerFileProcessor
	attr_accessor :name, :customers

	def initialize(name)
		@name = name
		@customers = []
	end

	def perform
		File.open("#{name}", "r") do |f|
		  f.each_line do |line|
		    @customers << Customer.new(JSON.parse(line))
		  end
		end
	end

	private

	def create_customer(customer_params)
		Customer.new(JSON.parse(customer_params))
	end
end