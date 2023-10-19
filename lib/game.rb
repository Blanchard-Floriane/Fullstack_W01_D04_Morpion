class Game
  attr_accessor :new_board

  def initialize
    @new_board = Board.new #créer le hash avec mes keys du  jeu + values empty
  end


  def round(players_array)
    players_array.each do |player|
      Show.new(@new_board.cells)
      puts "#{player.name} à toi de jouer : A1 / A2 / A3 / B1 / B2 / B3 / C1 / C2 / C3"
  
      print "> "
      user_answer = gets.chomp
      
      cell = BoardCase.new #ma cellule avec  attributs : empty, X , O
      # @new_board.cells[user_answer] = player.order == 1 ? cell.player1 : cell.player2
      loop do #pour pouvoir boucler tant que la la réponse n'est pas approprié
      wrong_answer = user_answer != "A1" && user_answer != "A2" && user_answer != "A3" && user_answer != "B1" && user_answer != "B2" && user_answer != "B3" && user_answer != "C1" && user_answer != "C2" && user_answer != "C3"

        if wrong_answer
          puts "Réponse incorrecte tête de cul, recommence !"
          print "> "
          user_answer = gets.chomp  
        elsif @new_board.cells[user_answer] != cell.empty
          puts "Recommence c'est déjà pris"
          print "> "
          user_answer = gets.chomp
        else
          @new_board.cells[user_answer] = player.order == 1 ? cell.player1 : cell.player2
          break
        end
      end
      
      Show.new(@new_board.cells)

      system "clear"
    end
  end
end