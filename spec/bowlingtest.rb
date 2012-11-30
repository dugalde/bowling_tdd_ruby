require './bowling'

describe "bowling game"do
  let(:g) {g = Bowling.new}
  def roll_many(n,pins)
    n.times do
      g.roll(pins)
    end
  end

  def rollSpare()
    g.roll(5)
    g.roll(5)
  end
  def rollStrike
    g.roll(10)
  end
  it "should roll" do
    g.roll(0)
  end

  it "should roll a gutter game"do
    roll_many(20,0)
    g.score().should be == 0
  end
  it "should test can roll allOnes"do
    roll_many(20,1)
    g.score().should be == 20
  end
  it "Should test a Spare" do
    rollSpare()
    g.roll(3)
    roll_many(17,0)
    g.score.should be == 16
  end
  it "Should test a Strike" do
    rollStrike()
    g.roll(3)
    g.roll(4)
    roll_many(16,0)
    g.score.should be == 24
  end
 it "should test the perfect game" do
   roll_many(12,10)
   g.score.should be == 300
 end

end
