require_relative '../../invitation/customer_file_processor.rb'

describe CustomerFileProcessor do

  describe "failure" do 

    it "should throw error when file does not exists" do
      procesor = CustomerFileProcessor.new('non_existent_file')
      expect { procesor.perform }.to raise_error(/No such file or directory/)
    end
    
  end

  describe "success" do

    before :all do
      @procesor = CustomerFileProcessor.new('./customers.txt')
      @procesor.perform
    end

    it "should parse all customers" do 
      expect(@procesor.customers.count).to eql(32)
    end

  end
end