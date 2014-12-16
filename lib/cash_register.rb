class CashRegister

  def initialize
    @total = 0
  end

  def total
    @total
  end

  def purchase(price)
    @total += price.to_f
  end

  def pay(amount_person_paying)
    amount_person_paying.to_f - @total
  end

end
