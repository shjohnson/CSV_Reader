require 'spec_helper'
require './lib/order'

describe Orders do

  describe "#create_new_file" do
    
      let(:file) { double("New file") }
      let(:build_contents) { double("Contents") }

    it "will create a new file" do
      File.should_receive(:new).and_return(file)
      file.stub(:write).and_return(build_contents)
      file.stub(:close).and_return(file)
      expect(subject.create_new_file).to eq file
    end
    
  end

  describe "#build_contents" do
    
    it "should store the correct contents in a variable" do
    
    end

  end

  describe "#read_file" do
   
    let(:contents) { double("contents")}

    it "will receive data using the CSV library" do
    CSV.stub(:foreach).and_return(contents)
    expect(subject.read_file).to eq contents
    end   

  end

end
