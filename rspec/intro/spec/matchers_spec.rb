
describe "Matchers" do
  it "asserts on equality" do
    number = 3
    # expect(number).to eq 3
    expect(number).to(be == 3)
  end

  it "asserts on mathematical operators" do
    number = 5
    expect(number).to(be >= 2)
  end

  it "asserts on matching a regular expression" do
    email = "claycarpenter@gmail.com"
    regular_expression = /\w+@\w+\.[a-z]{2,4}/

    expect(email).to match regular_expression
  end

  it "asserts on inheritance chain" do
    object = 2.3

    expect(object).to be_a Numeric
  end

  it "asserts on instance class" do
    object = 2.3

    expect(object).to be_an_instance_of Float
  end

  it "asserts on truthiness" do
    expect(true).to be_truthy
    expect(0).to be_truthy
    expect(Object.new).to be_truthy
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it "expects errors" do
    expect do
      raise ArgumentError
    end.to raise_error ArgumentError
  end

  it "expects throws" do
    expect {
      throw :oops
    }.to throw_symbol :oops

    expect {
      throw :oh_noetry_bad_poetry
    }.to throw_symbol
  end

  it "asserts on predicates" do
    class A
      def good?
        true
      end
    end

    expect(A.new).to be_good
  end

  it "asserts on collections" do
    list = [
      :one,
      :two,
      :three
    ]

    expect(list).to include :two
    expect(list).to start_with :one
    expect(list).to start_with [:one, :two]
    expect(list).to end_with :three
  end

  it "negates asserts" do
    expect(3).not_to be 5 
  end
end