require File.dirname(__FILE__) + '/../fixtures/classes'

ruby_version_is "1.9" do
  describe "Encoding::InvalidByteSequenceError#destination_encoding" do
    before(:each) do
      @exception, = EncodingSpecs::InvalidByteSequenceError.exception
    end

    it "returns an Encoding object" do
      @exception.destination_encoding.should be_an_instance_of(Encoding)
    end

    it "is equal to the destination encoding of the object that raised it" do
      @exception.destination_encoding.should == Encoding::ISO_8859_1
    end
  end
end
