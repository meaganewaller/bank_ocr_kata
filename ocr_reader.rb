require 'pry'
class OcrReader
  def initialize(file)
    @input = File.open(file)
    binding.pry
  end

  def parse
    split = @input.split
    parsed_values = {
      0 => ["_", "|", "|", "|_|"],
      1 => [],
      2 => [],
      3 => [],
      4 => [],
      5 => [],
      6 => [],
      7 => [],
      8 => [],
      9 => []
    }

    binding.pry

    parsed_keys = parsed_values.map do |k, v|
      if v == split
        return k
      end
    end

    return parsed_keys.join
  end
end
