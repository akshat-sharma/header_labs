require_relative 'frame'

class StrikeFrame < Frame
  BALLS_COUNT = 1
  BONUS_BALLS_COUNT = 2

  def initialize(balls)
    super(balls, BALLS_COUNT, BONUS_BALLS_COUNT)
  end
end