
require_relative './player'
# require './question'
# require './game'

class Game
  attr_accessor :player1, :player2

    def initialize
        puts "Enter Player 1 name"
        player1 =  gets.chomp
        puts "Enter Player 2 name"
        player2 =  gets.chomp

        @player1 = Player.new(player1)
        @player2 = Player.new(player2)
    end

    def start
        until player1.lives < 1 || player2.lives < 1
            player1.turn
            # player1.generatequestion
            player1.updated_scores player2
            puts '----- NEW TURN -----'
            player2.turn
            # player2.generatequestion
            player2.updated_scores player1
            puts '----- NEW TURN -----'
        end
    end
end