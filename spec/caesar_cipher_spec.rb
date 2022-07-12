require './lib/caesar.cipher'

describe "#caesar_cipher" do
  it "returns a string with each letter x values forward in the alphabet" do
    expect(caesar_cipher('abcd',2)).to eql('cdef')
  end

  it "wraps from z to a" do 
    expect(caesar_cipher('xyz',1)).to eql('yza')
  end

  it "keeps the correct case of letter positions" do
    expect(caesar_cipher('AbCd',1)).to eql('BcDe')
  end

  it "includes punctuation" do
    expect(caesar_cipher('!?AB',1)).to eql('!?BC')
  end
end