
require 'pry'

def validator(value, *regexes)
  # Returns results of regexes.each if successful, regex that failed for
  # failing test.
  regex_results = catch(:failed_regex) do
    regexes.each do |regex|
      result = regex =~ value

      throw(:failed_regex, regex) if result.nil?
    end
  end

  regex_results == regexes ? true : regex_results
end

binding.pry
