require "rspec"
require "../lib/account.rb"


describe Account do

  it "should initially have a balance of zero" do

    account = Account.new
    account.balance.should == 0.0



  end


  it "should have a balance equal to the starting balance" do
    starting_balance = 100.00
    subject = Account.new(starting_balance)
    subject.balance.should ==starting_balance
  end


  it "should have a balance equal to the starting balance plus the amount deposited" do
    starting_balance = 100.00
    subject = Account.new(starting_balance)
    amount = 40.0
    subject.deposit amount
    subject.balance.should == 140.00
  end

  it "should have a balance equal to the starting balance minus the amount withdrawn" do
    starting_balance = 100.0
    subject = Account.new(starting_balance)
    amount = 40.0
    subject.withdraw amount
    subject.balance.should == 60.0
  end

end