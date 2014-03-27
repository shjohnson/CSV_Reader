require 'spec_helper'
require './lib/order'

describe Orders do

  describe "#create_new_file" do
    it "will read the file requested"
    subject.should_receive(:new_file).and_return("example, file")
    subject.create_new_file.new_file should eq "example, file"
  end
  
end



  # describe "#build_contents" do
  
  # end

  # describe "#read_file" do
  
# file_path = File.expand_path(__FILE__) + "../orders.csv"
  # end

end