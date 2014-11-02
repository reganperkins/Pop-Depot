require_relative 'calculate'


def amount
  puts 'How much would you like to invest?'
  @investment = gets.chomp.to_i
end


def start_trade
  depot = Calculate_exchange.new(amount)
  depot.buy_pop

  loop do 
    depot.trade_in_bottles
    depot.trade_in_caps
    break if depot.trading_in
  end
  depot.total

  # while depot.trading_in
  #   depot.trade_in_bottles
  #   depot.trade_in_caps
  # end
  depot.total
end

start_trade 