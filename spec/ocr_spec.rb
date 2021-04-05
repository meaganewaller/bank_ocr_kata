require 'spec_helper'
require './ocr_reader'

describe "OCR Reader" do
  (0..9).each do |i|
    it "returns #{i}" do
      ocr_reader = OcrReader.new("./spec/fixtures/#{i}.txt")
      expect(ocr_reader.parse).to eql i
    end
  end

  it "returns 000000000" do
    ocr_reader = OcrReader.new("./spec/fixtures/000000000.txt")
    expect(ocr_reader.parse).to eql 000000000
  end
end
