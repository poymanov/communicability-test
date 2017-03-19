class PrintResults

  def initialize(points, results)
    @results = results
    @points = points
  end

  def print
    if @points.between?(30, 32)
      return @results[0]
    elsif @points.between?(25, 29)
      return @results[1]
    elsif @points.between?(19, 24)
      return @results[2]
    elsif @points.between?(14, 18)
      return @results[3]
    elsif @points.between?(9, 13)
      return @results[4]
    elsif @points.between?(4, 8)
      return @results[5]
    elsif @points <= 3
      return @results[6]
    end
  end

end