require_relative 'open_frame'
require_relative 'spare_frame'
require_relative 'strike_frame'

class Match
  MAX_FRAMES_COUNT = 10

  def initialize(ball_scores)
    scores = ball_scores.dup
    @frames = []
    MAX_FRAMES_COUNT.times do |index|
      if scores.first == Frame::MAX_SCORE
        @frames << StrikeFrame.new(scores)
      elsif scores.slice(0, SpareFrame::BALLS_COUNT).reduce(:+) == Frame::MAX_SCORE
        @frames << SpareFrame.new(scores)
      else
        @frames << OpenFrame.new(scores)
      end
    end
  end

  def scores
    scores = []
    @frames.inject(0) do |score, frame|
      score = score + frame.overall_score
      scores << score
      score
    end
    scores
  end
end