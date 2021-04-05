require 'pry'
class OcrReader
  def initialize(file)
    @input = File.read(file)
  end

  def parse
    split = @input.split
    binding.pry
    parsed_values = {
      0 => ["_", "|", "|", "|_|"],
      1 => ["|", "|"],
      2 => ["_", "_|", "|_"],
      3 => ["_", "_|", "_|"],
      4 => ["|_|", "|"],
      5 => ["_", "|_", "_|"],
      6 => ["_", "|_", "|_|"],
      7 => ["_", "|", "|"],
      8 => ["_", "|_|", "|_|"],
      9 => ["_", "|_|", "_|"]
    }

    parsed_keys = parsed_values.map do |k, v|
      if v == split
        return k
      end
    end

    return parsed_keys.join
  end
end
