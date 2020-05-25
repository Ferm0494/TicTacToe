# rubocop:disable Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity

class Win
  def initialize(arr)
    @positions = arr
  end

  def win?()
    if @positions[0].eql? @positions[1] and @positions[1].eql? @positions[2]
      true
    elsif @positions[3].eql? @positions[4] and @positions[4].eql? @positions[5]
      true
    elsif @positions[6].eql? @positions[7] and @positions[7].eql? @positions[8]
      true
    elsif @positions[0].eql? @positions[3] and @positions[3].eql? @positions[6]
      true
    elsif @positions[1].eql? @positions[4] and @positions[4].eql? @positions[7]
      true
    elsif @positions[2].eql? @positions[5] and @positions[5].eql? @positions[8]
      true
    elsif @positions[0].eql? @positions[4] and @positions[4].eql? @positions[8]
      true
    elsif @positions[2].eql? @positions[4] and @positions[4].eql? @positions[6]
      true
    else
      false
    end
  end
end
# rubocop:enable Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
