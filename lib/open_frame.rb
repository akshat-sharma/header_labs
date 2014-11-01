require_relative 'frame'

class OpenFrame < Frame
  BALLS_COUNT = 2
  BONUS_BALLS_COUNT = 0

  def initialize(balls)
    super(balls, BALLS_COUNT, BONUS_BALLS_COUNT)
  end
end