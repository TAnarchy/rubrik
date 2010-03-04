require File.join(File.dirname(__FILE__), '../spec_helper')

describe Assignment do
  it "should tell the truth" do
    true.should be_true
  end

  it "should have a title" do
    Assignment.all.each do |a|
      a.title.should_not be_nil
      a.title.strip.should_not be_empty
    end
  end
end
