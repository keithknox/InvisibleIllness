require 'spec_helper'

describe Person do
  it "has a valid factory" do
    FactoryGirl.create(:person).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:person, name: nil).should_not be_valid
  end
  it "is invalid without a story" do
    FactoryGirl.build(:person, story: nil).should_not be_valid
  end
  it "has a name that is a string" do
    john = FactoryGirl.create(:person)
    john.name.class.should equal(String)
  end
  it "returns a person's name" do
    john = FactoryGirl.create(:person, name: "John D.")
    john.name.should == "John D."
  end

  it "has a story that is a string" do
    FactoryGirl.create(:person).story.class.should equal(String)
  end

end
