require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'board'
require 'board_case'
require 'player'
require 'game'
require 'show'


#cette classe va nous permettre de lancer le jeu. Elle va faire une boucle infinie de parties (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game.

#intro
puts
46.times{print "-"}
puts
puts "|    Voici venu le jeu du MORPIONNNNN !      |"
puts "| Le but du jeu est d'aligner tes 3 points ! |"
46.times{print "-"}
2.times{puts}

#les joueurs
puts "Joueur #1 : Quel est ton prénom ?"
name_player1 = gets.chomp
player1 = Player.new(name_player1, 1)
puts

puts "Joueur #2 : Quel est ton prénom ?"
name_player2 = gets.chomp
player2 = Player.new(name_player2, 2)

new_board = Board.new #créer le hash 

#boucle Class Game vient ici
new_game = Game.new(new_board.cells)
new_game.menu(player1)


#binding.pry