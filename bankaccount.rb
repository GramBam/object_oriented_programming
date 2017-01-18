class BankAccount

  attr_accessor :balance, :interest_rate

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount.to_f

  end

  def withdraw(amount)
    @balance -= amount.to_f

  end

  def gain_interest
    @balance *= @interest_rate.to_f
  end


end

  account = BankAccount.new(3500,1.05)

  puts account.balance, account.interest_rate

  puts "deposit:"
  account.deposit(gets.chomp)

  puts "withdraw:"
  account.withdraw(gets.chomp)

  puts "interest rate?"
  account.interest_rate=gets.chomp
  account.gain_interest

  puts account.balance, account.interest_rate
