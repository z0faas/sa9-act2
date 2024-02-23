require 'prob_3'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      my_balance = BankAccount.new()
      my_balance.deposit(10)
      expect(my_balance.balance).to eq(10) # getting the value of my_balance with .balance (needs to = 10)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      my_balance = BankAccount.new()
      my_balance.deposit(10)
      my_balance.withdraw(10)
      expect(my_balance.balance).to eq(0) # withdrawing $10 from the balance should result in $0
    end

    it "does not change the balance if insufficient funds" do
      my_balance = BankAccount.new()
      my_balance.deposit(10)
      my_balance.withdraw(50)
      expect(my_balance.balance).to eq(10) # the balance shouldn't change if there's insufficient funds for withdrawal
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      my_balance = BankAccount.new()
      my_balance.deposit(100)
      expect(my_balance.balance).to eq(100)
    end
  end
end
