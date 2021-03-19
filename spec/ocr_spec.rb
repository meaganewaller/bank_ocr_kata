require 'spec_helper'
require './ocr_reader'

describe "OCR Reader" do
  it "returns 000000000" do
    ocr_reader = OcrReader.new('./user_stories/story1.txt')
    expect(ocr_reader.parse).to eql 0
  end
end
