VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10,
  'Jack', 'Queen', 'King', 'Ace']
​
def blackjack_score(hand)
  score = 0
  hand.each do |card|
    unless (VALID_CARDS.include?(card))
      raise ArgumentError.new("The card #{card} is not valid.")
    end
    if card.is_a? Numeric
      score += card
    elsif card.is_a? String
      if card == 'Ace'
        point_value = score <= 10 ? 11 : 1
        score += point_value
        # if score <= 10
        #   score += 11
        # else
        #   score += 1
        # end
      else
        score += 10
      end
    end
    if score > 21
      raise ArgumentError.new("You total score is #{score} and is bust! You lose. :(")
    end
  end
  return score
end