module PrintResults
  def self.print(points, results)
    if points.between?(30, 32)
      results[0]
    elsif points.between?(25, 29)
      results[1]
    elsif points.between?(19, 24)
      results[2]
    elsif points.between?(14, 18)
      results[3]
    elsif points.between?(9, 13)
      results[4]
    elsif points.between?(4, 8)
      results[5]
    elsif points <= 3
      results[6]
    end
  end
end