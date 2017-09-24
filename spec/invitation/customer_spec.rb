require_relative '../../invitation/customer.rb'

describe Customer do
  before :all do
     dummy_customer_data = { 'name' => 'Jon Doe', 'user_id' => 1, 'longitude' => '51.885', 'latitude' => '0.235' }
     @customer = Customer.new (dummy_customer_data)
   end

  it "should set correct customer name" do
    expect(@customer.name).to eql('Jon Doe')
  end

  it 'should set correct user_id' do 
    expect(@customer.user_id).to eql(1)
  end


  it 'should set correct longitude' do 
    expect(@customer.longitude).to eql(51.885)
  end


  it 'should set correct user_id' do 
    expect(@customer.latitude).to eql(0.235)
  end

  it 'should give correct distance' do
    expect(@customer.distance_to_office).to eql(7942.89975068957)
  end

end