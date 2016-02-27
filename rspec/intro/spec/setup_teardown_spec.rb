
require 'blog'

describe 'Callbacks' do
  let(:blog) { Blog.new }

  # Options:
  # :each, :context
  before(:each) do
    blog.populate!
  end

  it "it has one post" do
    expect(blog.posts_count).to eq 1
  end

  it "it has one post" do
    expect(blog.posts_count).to eq 1
  end
end
