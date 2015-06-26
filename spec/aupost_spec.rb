require 'spec_helper'



describe Aupost do

	before do
		@client = Aupost::Client.new("Your-test-key")
	end
    
    it 'has a version number' do
    	expect(Aupost::VERSION).not_to be nil
    end

  	it 'need an Aupost url to start with' do
  		expect(Aupost::AUPOST_URL).not_to be nil
  	end

end
