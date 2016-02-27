
require 'apis'

shared_examples_for "API" do |api|
  it "lists products" do
    expect(api.list_products).to match [
      a_hash_including(
      name: an_instance_of(String),
      category: an_instance_of(String),
      price: an_instance_of(Float)
      )
    ]
end

end
describe WebAPI do
  let(:api) { WebAPI.new "http://localhost:3000/" }

  it "has a url" do
    expect(api).to respond_to :url
  end

  it_behaves_like "API", WebAPI.new("http://localhost:3000/")
end

describe FileAPI do
  let(:api) { FileAPI.new "/etc/whatever/fake.db" }

  it "has a file location" do
    expect(api).to respond_to :location
  end

  it_behaves_like "API", FileAPI.new("/etc/whatever/fake.db")
end
