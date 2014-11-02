class Calculate_Exchange

  attr_accessor :total_bottles, :bottle_caps, :investment
  def initialize (investment)
    @investment = investment
    @total_bottles = 0
    @caps_to_trade = 0
    @bottles_to_trade = 0
  end

  def trading_in
    (@caps_to_trade < 4) && (@bottles_to_trade < 2)
  end

  def buy_pop
    @total_bottles = @investment / 2 
    # any remainder? puts change owed
    @bottles_to_trade = @total_bottles
    @caps_to_trade = @bottles_to_trade
     # puts "investment #{@investment}"
     # puts "bottles_to_trade #{@bottles_to_trade}"
  end

  def trade_in_bottles
    new_bottles = @bottles_to_trade / 2
    @caps_to_trade += new_bottles
    @bottles_to_trade = (new_bottles % 2) + new_bottles
    # puts "new_bottles #{new_bottles}"
    @total_bottles += new_bottles
    # puts "bottles_to_trade #{@bottles_to_trade}"
    # puts "total_bottles #{@total_bottles}"
    # puts "caps_to_trade #{@caps_to_trade}"
  end

  def trade_in_caps
    new_bottles = @caps_to_trade / 4
    # puts "-new_bottles #{new_bottles}"
    @caps_to_trade = (new_bottles % 4) + new_bottles
    @total_bottles += new_bottles
    # puts "-total_bottles #{@total_bottles}"
    @bottles_to_trade += new_bottles
    # puts "-bottles_to_trade #{@bottles_to_trade}"
    # puts "-caps_to_trade #{@caps_to_trade}"
  end

  def total
    puts "You have returned a total of #{@total_bottles}"
  end

end