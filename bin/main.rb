require_relative '../lib/match'

loop do 
  scores = gets.chomp
  if scores == ''
    break
  else
    scores = scores.split(/\s+/).collect(&:to_i)
    match = Match.new(scores)
    puts match.scores
  end
end