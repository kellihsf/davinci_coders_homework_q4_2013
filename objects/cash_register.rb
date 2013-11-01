#!/usr/bin/env ruby

class CashRegister

  def initialize
    @total = 0
  end

  def purchase(item_price)
    @total += item_price
    total
  end

  def total
    @total.round(2)
    # sprintf("%0.2f", @total)
    # http://stackoverflow.com/questions/10459901/how-do-you-round-a-float-to-two-decimal-places-in-jruby
  end

  def pay(amount_paid)
    @total = amount_paid - total
    # total
    if total.to_f < 0
      puts "You owe $#{total.to_f.abs} more."
    elsif
    total.to_f > 0
      puts "Your change is $#{total.to_f.abs}."
      @total = 0
    else
      puts "Your new balance is $#{total}."
    end
  end
end

register = CashRegister.new
register.total  # => 0
register.purchase(3.78)  # => 3.78
register.total  # => 3.78
register.pay(5.00)  # => "Your change is $1.22."
register.total # => 0