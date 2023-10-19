class Game
  attr_accessor :new_board

  def initialize
    @new_board = Board.new #créer le hash avec mes keys du  jeu + values empty
  end


  def round(players_array)
    players_array.each do |player|
      Show.new(@new_board.cells)
      puts "#{player.name} à toi de jouer : a1 / a2 / a3 / b1 / b2 / b3 / c1 / c2 / c3"
  
      print "> "
      user_answer = gets.chomp
      
      cell = BoardCase.new #ma cellule avec  attributs : empty, X , O
      # @new_board.cells[user_answer] = player.order == 1 ? cell.player1 : cell.player2
      loop do #pour pouvoir boucler tant que la la réponse n'est pas approprié
      wrong_answer = user_answer != "a1" && user_answer != "a2" && user_answer != "a3" && user_answer != "b1" && user_answer != "b2" && user_answer != "b3" && user_answer != "c1" && user_answer != "c2" && user_answer != "c3"

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