# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit
# and those behind them take their place.
# A queue
class Line
  attr_accessor :members

  def initialize
    self.members = []
  end

  def join(person)
    self.members << person
  end

  def leave(person)
    self.members.delete(person)
  end

  def front
    self.members.first
  end

  def middle       # test shows middle rounds up
    self.members[self.members.length/2).ceil]
  end

  def back
    self.members.last
  end

  def search(person)
    self.members.include?(person) person
  end

  private

  def index(person)
  end

end
