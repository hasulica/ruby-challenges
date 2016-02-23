=begin
Since the Hash class in Ruby include the Enumerable mixin, we can use
the handy max_by method included.
=end

def longest_string hash
  hash.max_by { |key, value| value.length }
end


domains = { "de" => "Germany",
            "sk" => "Slovakia",
            "hu" => "Hungary",
            "us" => "United States",
            "no" => "Norway"
          }

p longest_string domains
