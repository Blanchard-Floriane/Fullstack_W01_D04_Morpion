class Game
  attr_accessor :cells

  def initialize(cells)
    #créer le plateau de jeux
    @cells = cells
    Show.new(@cells)
  end

  def menu(player)
    puts "
    Choisis une case :
    a1 / a2 / a3 / b1 / b2 / b3 / c1 / c2 / c3
    "
    print "> "
    user_answer = gets.chomp
    
    cell = BoardCase.new
    #binding.pry
    @cells[user_answer] = player.order == 1 ? cell.player1 : cell.player2
  
    Show.new(@cells)

  end
  


end