class ScrabbleWord
  attr_accessor :letters,:words
  def initialize(words)
    @words = words.to_s.upcase
  end

  def score
    return (sum scores)
  end

  def multiplier_score(mult)
    return (sum(scores) * mult)
  end
  private

  def scores
    @words.chars.map { |letter| LETTERS_WITH_SCORES.fetch(letter, 0) }
  end

  def sum(scores)
    scores.reduce(0, :+)
  end

  LETTERS_WITH_SCORES = {
    "A" => 1,
    "B" => 3,
    "C" => 3,
    "D" => 2,
    "E" => 1,
    "F" => 4,
    "G" => 2,
    "H" => 4,
    "I" => 1,
    "J" => 8,
    "K" => 5,
    "L" => 1,
    "M" => 3,
    "N" => 1,
    "O" => 1,
    "P" => 3,
    "Q" => 10,
    "R" => 1,
    "S" => 1,
    "T" => 1,
    "U" => 1,
    "V" => 4,
    "W" => 4,
    "X" => 8,
    "Y" => 4,
    "Z" => 10
  }
end
