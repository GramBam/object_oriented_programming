class Player

  attr_accessor :gold_coins, :health_points, :lives, :score

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

def do_battle
  @health_points -= 1

  if @health_points <= 0
    @lives -= 1
    @health_points = 10
    if @lives <= 0
      restart
    end
  end
end

def restart
  initialize
end

def level_up
  @lives += 1
end

def collect_treasure(coins)

  @gold_coins >= coins

  if @gold_coins >= 10
    @score += 1
    @gold_coins -= 10
  if @score >= 10
    level_up
    @score -= 10
  end
  end
end








end
