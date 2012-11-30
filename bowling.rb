class Bowling

  def initialize()
    @rolls = []
  end

  def roll(pins)
     @rolls << pins
  end

  def score()
    @scores = 0
    @frame = 0
    @firstInFrame = 0
    while @frame < 10
    if isStrike?(@firstInFrame)
        @scores += 10 + nextTwoBallForStrike(@firstInFrame)
        @firstInFrame += 1
    elsif isSpare?(@firstInFrame)
         @scores += 10  + nextBallForSpare(@firstInFrame)
         @firstInFrame += 2
    else
         @scores += twoBallsInFrame(@firstInFrame) 
         @firstInFrame += 2
    end
         @frame += 1
    end
    return @scores
  end

  def isStrike? (firstInFrame)
   return @rolls[firstInFrame] == 10
  end

  def isSpare? (firstInFrame)
    return  @rolls[firstInFrame] + @rolls[firstInFrame + 1] == 10
  end
  
 def nextBallForSpare(firstInFrame)
  return  @rolls[firstInFrame + 2]

 end

 def nextTwoBallForStrike (firsInFrame)
   return @rolls[firsInFrame + 1] + @rolls[firsInFrame + 2]
 end

def twoBallsInFrame(firstInFrame)
  return  @rolls[firstInFrame] + @rolls[firstInFrame + 1]
end
end
