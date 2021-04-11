
require 'pry'
class AccountSplitter
  def initialize
  end

  def split(input)
    lines = input.split("\n").map { |line| line.split(/(\W)/).select { |el| el != "" } }
  end
end
