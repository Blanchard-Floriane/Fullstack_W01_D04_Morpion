require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'board'
require 'board_case'
require 'player'
require 'game'
require 'show'

#intro
system 'clear'
puts
46.times{print "-"}
puts
puts "|    Voici venu le jeu du MORPIONNNNN !      |"
puts "| Le but du jeu est d'aligner tes 3 points ! |"
46.times{print "-"}
2.times{puts}
sleep(0.8)

#les joueurs
puts "Joueur #1 : Quel est ton blaze ?"
name_player1 = gets.chomp
player1 = Player.new(name_player1, 1) #initialise le er joueur
puts
sleep(0.3)

puts "Joueur #2 : Quel est ton blaze ?"
name_player2 = gets.chomp
player2 = Player.new(name_player2, 2)
puts

players_array = [player1, player2]

#boucle Class Game vient ici
new_game = Game.new #(new_board.cells)
sleep(0.3)
system 'clear'

i = 1
while true
  puts "\e[4m#{"Partie n°#{i}"}\e[0m :" #Partie souligné et avec un chiffre qui évolue
  new_game.round(players_array)
  
  #condition de victoire
  #if 3 cases adjacentes (array) sont égales && 3 cases différentes de empty
  # puts Victory
  # break
  #else
  #end


  i += 1
end
