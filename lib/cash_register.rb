class CashRegister

  attr_reader :total
  #def total
  #@total
  #end
  #
  #attr_accessor
  # def total(new_total)
  #   @total == new_total
  # end

  def initialize(total = 0)
    @total = total
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
