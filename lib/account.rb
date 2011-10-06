class Account
    attr_reader :balance

  def initialize(starting_balance = 0.0)
      @balance =starting_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
  @balance -= amount
  end

  def transfer_to account2, amount
     withdraw amount
     account2.deposit amount
  end


end