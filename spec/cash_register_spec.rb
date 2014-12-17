require 'cash_register'

describe CashRegister do

  describe "initialization" do
    it 'takes an initial amount' do
      cash_register = CashRegister.new(74.32)

      expect(cash_register.total).to eq(74.32)
    end
  end 

  describe "#total" do
    it 'starts at 0' do        #describe
      cash_register = CashRegister.new  #instantiate a new class

      total = cash_register.total   #do the thing you're testing

      expect(cash_register.total).to eq(0)
    end
  end

  describe "#purchase" do
    it 'takes a floating number and adds to total' do
      cash_register = CashRegister.new

      cash_register.purchase(15.75)

      expect(cash_register.total).to eq(15.75)
    end
  end



  describe "#pay" do
    it 'takes one floating number for how much is paid. It should return how much change is given' do
      cash_register = CashRegister.new

      cash_register.purchase(15.75)
      change = cash_register.pay(16.00)

      expect(change).to eq(0.25)
    end

  end

end

#look at thoughtbot for rspec tests

#   There is a purchase method that takes a floating number and adds that to the total.
# There is a total method that returns how much is owed.
# There is a pay method that takes one floating number for how much is paid. It should return how much change is given.
# When the Cash Register is initialized is should begin with a starting balance of 0.
