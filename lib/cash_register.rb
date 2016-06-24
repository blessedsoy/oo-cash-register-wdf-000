

class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@items = @@items.clear
    @@prices = @@prices.clear
  end

  @@items = []
  @@prices = []

  def add_item (title, price, quantity=1)
    @total += price * quantity 

    quantity.times {@@items << title}
    quantity.times {@@prices << price}

  end

  def apply_discount
    @total -= @total * @discount / 100
    if @total == 0
      return "There is no discount to apply."
    else
    return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@items
  end

  def void_last_transaction

   @total = @total - @@prices[@@prices.length-1]
  end

end
