
# class question


# end
class Question

def question(name)
    first_nbr = Random.rand(20)
    second_nbr = Random.rand(20)
    answer = first_nbr + second_nbr
    
    puts name + ": What does #{first_nbr} plus #{second_nbr} equal?"
    user_answer = gets.chomp

    if user_answer.to_i == answer
         puts name + ": YES! You are correct."
         return true
    else
         puts name + ": Seriously? No!"
        #  updatelives removed direct call from here and put in player to call from turn
        return false
    end 

  end
end