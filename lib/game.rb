class Game
  attr_accessor :new_board

  def initialize
    @new_board = Board.new #créer le hash avec mes keys du  jeu + values empty
  end


  def menu(players_array)
    players_array.each do |player|
      Show.new(@new_board.cells)
      puts "#{player.name} à toi de jouer : a1 / a2 / a3 / b1 / b2 / b3 / c1 / c2 / c3"

      print "> "
      user_answer = gets.chomp
      
      cell = BoardCase.new #ma cellule avec  attributs : empty, X , O
      @new_board.cells[user_answer] = player.order == 1 ? cell.player1 : cell.player2
      
      Show.new(@new_board.cells)

      system "clear"
    end
  end
end