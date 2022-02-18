require 'rspec'

require_relative 'lab3.rb'

RSpec.describe "lab3" do

	it "#test script1_1" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("Eremeev")
		expect(script1).to eq('veemerE')
	end
	
	it "#test script1_2" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("EgorCS")
		expect(script1).to eq(64)
	end
	
	it "#test script2_1" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return(3, "pocky", "yellow", "boom", "red", "aqua", "blue")
		expect(script2).to eq([[{"name: "=>"pocky", "color: "=>"yellow"}], [{"name: "=>"boom", "color: "=>"red"}], [{"name: "=>"aqua", "color: "=>"blue"}]])
	end
end
