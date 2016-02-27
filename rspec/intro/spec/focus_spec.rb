# start manually with `rspec --tag focus`

require 'pry'

describe "Individual Test Focuses" do

  it "is ignored without focus" do
    expect(true).to be_truthy
  end

  fit "is focused through fit" do
    expect(true).to be_truthy
  end

  it "is focues verbosely", focus: true do
    expect(true).to be_truthy
  end

  xit "is a failing test that is completely ignored without focus" do
    fail
  end
end

fdescribe "Group Focuses" do
  it "is focused through group fdescribe" do
    expect(true).to be_truthy
  end
end
