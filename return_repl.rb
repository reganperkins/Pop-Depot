require_relative 'bottle_depot'
## require_relative 'calculate'

def amount
  puts '"How much would you like to spend on bottles today? e.g. 20 for $20"'
  @investment = gets.to_i
end

def start_trade
  depot = BottleDepot.new(amount)
  depot.buy_pop

  loop do 
    depot.trade
    break if depot.trading_in?
  end

  depot.final_report
  start_trade
end

start_trade 
