class Player
  attr_accessor :first_name, :order

  def initialize(first_name, order)
    @first_name = first_name
    @order = order
  end

  # attribution aléatoir ne fonctionne pas car risque d'avoir le même pion ?!? Ou bien mettre l'attribution dans game ?

  # def pawn_attribution
  #   num = rand(1..2)
  #   if num == 1
  #     @pawn = "\u{274C}"
  #   else
  #   end
  # end
end

# "\u{274C}" = emoji croix
# "\u{2B55}" = emoji circle