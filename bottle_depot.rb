class BottleDepot

  attr_accessor :total_bottles, :bottle_caps, :investment, :caps, :empties
  def initialize (investment)
    @investment = investment
    @total_bottles = 0
    @caps = 0
    @empties = 0
  end

  BOTTLE_PRICE = 2
  TRADE_CAPS_IN = 4
  TRADE_BOTTLES_IN = 2

  def trading_in?
    @caps < TRADE_CAPS_IN && @empties < TRADE_BOTTLES_IN
  end

  def buy_pop
    @total_bottles = @investment / BOTTLE_PRICE
    @empties = @total_bottles
    @caps = @total_bottles
  end

  def trade
    trade_in_bottles
    trade_in_caps
    trading_in?
  end

  def trade_in_bottles
    new_bottles = @empties / TRADE_BOTTLES_IN
    @total_bottles += new_bottles
    @caps += new_bottles
    @empties = (@empties % TRADE_BOTTLES_IN) + new_bottles
  end

  def trade_in_caps
    new_bottles = @caps / TRADE_CAPS_IN
    @total_bottles += new_bottles
    @empties += new_bottles
    @caps = (@caps % TRADE_CAPS_IN) + new_bottles
  end

  def final_report
    puts "You have returned a total of #{@total_bottles}"
  end

end