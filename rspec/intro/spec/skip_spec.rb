
require 'pry'

describe "Test Skips" do

  xit "is skipped with xit" do
    fail
  end

  it "is skipped in test body" do
    skip
    fail
  end

  it "is skipped verbosely", skip: true do
    fail
  end

  it "is skipped with message", skip: "Doesn't work due to conflicting Product impls" do
    fail
  end
end