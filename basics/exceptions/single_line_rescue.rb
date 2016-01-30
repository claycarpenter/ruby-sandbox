require 'pry'

comments = [
  {
    author: {
      name: 'George Washington'
    },
    body: 'Lorem ipsum'
  },
  {
    body: 'Give me liberty or give me death!'
  }
]

comments.each do |comment|
  author = comment[:author][:name] rescue nil
  comment_body = comment[:body]
  puts "#{(author ? author : 'Anonymous')} wrote \"#{comment_body}\""
end