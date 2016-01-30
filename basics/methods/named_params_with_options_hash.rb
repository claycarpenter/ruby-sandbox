
def string_reverser(string, options={})
  reversed = string.reverse

  if options[:swapcase]
    reversed.swapcase!
  end

  if options[:strip]
    reversed.strip!
  end

  reversed
end

puts string_reverser "abc", :swapcase => true
puts string_reverser "Alpha Beta", {swapcase: true}
puts string_reverser "Wolverine  ", swapcase: false, strip: true
