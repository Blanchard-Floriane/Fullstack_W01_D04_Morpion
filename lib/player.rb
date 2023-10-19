class Player
  attr_accessor :first_name, :order

  def initialize(first_name, order)
    @first_name = first_name
    @order = order
  end
end