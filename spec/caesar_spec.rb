require './caesar-cipher.rb'

describe "#caesar_cipher" do
  it "shifts a string" do
    expect(caesar_cipher("hello",1)).to eql("ifmmp")
  end

  it "accepts negative shifts" do
    expect(caesar_cipher("world",-1)).to eql("vnqkc")
  end

  it "preserves capitalization" do
    expect(caesar_cipher("Hello World",1)).to eql("Ifmmp Xpsme")
  end

  it "preserves punctuation" do
    expect(caesar_cipher("Hello, World!",1)).to eql("Ifmmp, Xpsme!")
  end

  it "can handle large shifts" do
    expect(caesar_cipher("hello world", 50)).to eql("fcjjm umpjb")
  end

  it "can handle large negative shifts" do
    expect(caesar_cipher("hello world", -80)).to eql("fcjjm umpjb")
  end
end