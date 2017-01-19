class Paperboy

  attr_accessor :name, :experience
  attr_reader :earnings

  def initialize(name, experience = 0, earnings = 0)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    return (50+experience / 2)
  end

  def deliver(start_address, end_address)
    if end_address - start_address >= quota
      @earnings += quota * 0.25
      @earnings += (end_address - start_address + 1 - quota) * 0.50
    else
      @earnings += (end_address - start_address + 1) * 0.25
      @earnings -= 2
    end
    @experience += end_address - start_address + 1
    return @earnings
  end

  def report
    "I'm #{@name}, I've delivered #{experience} papers and I've earned #{@earnings} so far!"
  end





end

graham = Paperboy.new("Graham", 0)

puts graham.quota
puts graham.deliver(101,160)
puts graham.earnings
puts graham.report

puts graham.quota
puts graham.deliver(1,75)
puts graham.earnings
puts graham.report
