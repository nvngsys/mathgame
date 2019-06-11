require_relative './question'

class Player
attr_accessor :name, :lives, :first_nbr, :second_nbr
attr_reader :max_lives

    def initialize name
      @name = name
      @max_lives = 3
      @lives = @max_lives
    end

    def turn
      answer = Question.new.question(@name)
      # !answer.question(@name) ? updatelives : nil 
      !answer ? updatelives : nil 

    end

    def updatelives
      @lives -= 1
      puts "Test-remaining lives for player #{name} is #{@lives}"
    end

    def updated_scores(player)
      puts "#{@name}: #{@lives}/#{@max_lives} vs #{player.name}: #{player.lives}/#{player.max_lives}"
    end

end