require 'spec_helper'
require './account_splitter'
describe AccountSplitter do
  it "transforms multiline input into multiline characters" do
    account_splitter = AccountSplitter.new
    input = <<-HEREDOC

  |  |  |  |  |  |  |  |  |
  |  |  |  |  |  |  |  |  |

    HEREDOC
    output = account_splitter.split(input)
    expect(output).to eql [[" ", " ", " "], [" ", " ", "|"], [" ", " ", "|"]]
  end
end
