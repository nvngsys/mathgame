# frozen_string_literal: true

# require './<tbd>'

class Mathgame
  attr_accessor :name, :lives, :first_nbr, :second_nbr
  attr_reader :max_lives

  def initialize(name)
    @name = name
    @max_lives = 3
    @lives = @max_lives
    @first_nbr = 0
    @second_nbr = 0
  end

  def generatequestion
    first_nbr = Random.rand(20)
    second_nbr = Random.rand(20)
    answer = first_nbr + second_nbr

    puts @name + ": What does #{first_nbr} plus #{second_nbr} equal?"
    user_answer = gets.chomp

    # puts "Test-Program Answer #{answer}"
    # puts "Test-User Answer #{user_answer}"
    # puts "Test- #{answer.class}"
    # puts "Test- #{user_answer.class}"

    if user_answer.to_i == answer
      puts @name + ': YES! You are correct.'
    else
      puts @name + ': Seriously? No!'
      # call to update lives
      updatelives
      end
  end

  def updatelives
    @lives -= 1
    puts "Test-remaining lives for player #{name} is #{@lives}"
  end

  def updated_scores(player)
    puts "#{name}: #{lives}/#{max_lives} vs #{player.name}: #{player.lives}/#{player.max_lives}"
  end
end

player1 = Mathgame.new 'Fred'
player2 = Mathgame.new 'Barney'

# testing to be removed
# puts " #{player1.name}  has how many lives  #{player1.lives}"
# puts " #{player2.name}  has how many lives  #{player2.lives}"
# puts player2.name

until player1.lives < 1 || player2.lives < 1
  player1.generatequestion
  player1.updated_scores player2
  puts '----- NEW TURN -----'
  player2.generatequestion
  player2.updated_scores player1
  puts '----- NEW TURN -----'
end
