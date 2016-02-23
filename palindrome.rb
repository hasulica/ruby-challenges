=begin
Since we can't use the ruby method 'reverse', we could simply write our own,
apply it to our string and compare.
However for the sake of simplicity, since we can treat a string as an array,
one way to run our check is to compare each char to the one in the coresponding
potision at the other end of the string.
=end

def palindrome? string
  #remove spaces and non alpha-numeric characters
  string = string.downcase.gsub /\W/, ''
  halfLength = string.length / 2

  for i in 0..halfLength
    if string[i] != string[-i-1]
      return false
    end
  end

  true

end

p palindrome? 'test'
p palindrome? 'pap'
p palindrome? 'A car, a man, a maraca.'
p palindrome? 'Kay, a red nude, peeped under a yak.'
p palindrome? '12222442'
