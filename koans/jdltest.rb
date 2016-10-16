require 'pp'

# Greed is a dice game where you roll up to five dice to accumulate
# points.  The following "score" function will be used to calculate the
# score of a single roll of the dice.
#
# A greed roll is scored as follows:
#
# * A set of three ones is 1000 points
#
# * A set of three numbers (other than ones) is worth 100 times the
#   number. (e.g. three fives is 500 points).
#
# * A one (that is not part of a set of three) is worth 100 points.
#
# * A five (that is not part of a set of three) is worth 50 points.
#
# * Everything else is worth 0 points.
#
#
# Examples:
#
# score([1,1,1,5,1]) => 1150 points
# score([2,3,4,6,2]) => 0 points
# score([3,4,5,3,3]) => 350 points
# score([1,5,1,2,4]) => 250 points
#
# More scoring examples are given in the tests below:
#
# Your goal is to write the score method.

def score(dice)
  # You need to write this method
  puntaje = 0
  if dice == []
    return "Soy 0 y devuelvo el puntaje #{puntaje}" 
  else
    t = {}
    dice.each do |i|
      t[i] = 0 if t[i].nil?
      t[i]+=1
    end
    pp t

    t.each do |k,v|
       if (k!=1)
        pp k
         if (v>=3)
           puntaje += (100 * k)
           t[k]-=3
         end
       end

       if (k==5)
         puntaje = puntaje + (t[k] * 50)
       end

       if (k==1)
         if (v>=3)
          puntaje = puntaje + 1000
          v = v-3
         end
         puntaje = puntaje + (v *100)
        end

       end
    return "Soy algo y devuelvo el puntje de #{puntaje}"
  end

end

# score([1,1,1,5,1]) => 1150 points
# score([2,3,4,6,2]) => 0 points
# score([3,4,5,3,3]) => 350 points
# score([1,5,1,2,4]) => 250 points
pp score([1,1,1,5,1])
pp score([2,3,4,6,2])
pp score([3,4,5,3,3])
pp score([1,5,1,2,4])