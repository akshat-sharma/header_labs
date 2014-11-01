class Frame
  MAX_SCORE = 10

  def initialize(balls, balls_count, bonus_balls_count)
    @score = balls.shift(balls_count).reduce(:+)
    @bonus_score = balls.slice(0, bonus_balls_count).inject(0, :+)
  end

  def overall_score
    @score + @bonus_score
  end
end