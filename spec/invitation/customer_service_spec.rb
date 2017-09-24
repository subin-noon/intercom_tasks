require_relative '../../invitation/customer_service.rb'

describe CustomerService do
  before :all do
    @service = CustomerService.new('./customers.txt')
   end

  it "should list customers with in 100 km" do
    @service.customers_with_in_100_km.each do |customer|
      expect(customer.distance_to_office).to be <= 100
    end
  end

  it "should display customers with 100 kn in ascending order of user_id" do 
    expect{ @service.display_customers }.to output(dummy_response).to_stdout
  end

  private

  def dummy_response
    "user_id = 4 name = Ian Kehoe\nuser_id = 5 name = Nora Dempsey\nuser_id = 6 name = Theresa Enright\nuser_id = 8 name = Eoin Ahearn\nuser_id = 11 name = Richard Finnegan\nuser_id = 12 name = Christina McArdle\nuser_id = 13 name = Olive Ahearn\nuser_id = 15 name = Michael Ahearn\nuser_id = 17 name = Patricia Cahill\nuser_id = 23 name = Eoin Gallagher\nuser_id = 24 name = Rose Enright\nuser_id = 26 name = Stephen McArdle\nuser_id = 29 name = Oliver Ahearn\nuser_id = 30 name = Nick Enright\nuser_id = 31 name = Alan Behan\nuser_id = 39 name = Lisa Ahearn\n"
  end
end