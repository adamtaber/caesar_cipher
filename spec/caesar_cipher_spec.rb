require './lib/caesar.cipher'

describe "#caesar_cipher" do
  it "returns a string with each letter x values forward in the alphabet" do
    expect(caesar_cipher('abcd',2)).to eql('cdef')
  end

  it "wraps from z to a" do 
    expect(caesar_cipher('xyz',1)).to eql('yza')
  end
end