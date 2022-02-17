require 'rspec'

require_relative 'lab2.rb'

RSpec.describe "lab2" do

	it "#test greeting_1" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return('Егор', 'Еремеев', '17')
		expect(greeting).to eq('Привет, Егор Еремеев. Тебе меньше 18 лет, но начать учиться программировать никогда не рано.')
	end
	
	it "#test greeting_2" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return('Егор', 'Еремеев', '22')
		expect(greeting).to eq('Привет, Егор Еремеев. Самое время заняться делом!')
	end
	
	it "#test foobar_1" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 64)
		expect(foobar).to eq(64)
	end
	
	it "#test foobar_2" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return(64, 20)
		expect(foobar).to eq(20)
	end
	
	it "#test foobar_3" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return(36, 64)
		expect(foobar).to eq(100)
	end
end
