=begin
The obvious solution here is to brute force it, aka check every possible
path and find out the maximum one. However, for a triangle of height n
there are 2^n-1 possible paths, around 600 billion billion billion for
100 height! O(2^n) is one of the highest order of complexities and on
your average 2.8GHz computer is would take billions of seconds.

So we have to turn the problem onto it's head. Quite literally.
Take the following example:

      12
    14  16
  42  63  35
54  25  23  35

When checking every possible path, we will have to find the solution of the
sub-triangle starting with 63 twice, once for the 14-path and once for the 16
path.

We can get rid of that repetition by first calculating the optimal result for
the subproblem, in this case the maximum between 25 + 63 and 23 + 63 and
store that value.
=end

def maximum_sum height
  data = []
  File.readlines(height.to_s + ".txt").map do |line|
    data << line.split.map(&:to_i)
  end

  initial_time = Time.now

  (data.length - 1).downto(0) { |row|
    0.upto(row - 1) { |column|
      data[row - 1][column] += [data[row][column], data[row][column + 1]].max
    }
  }
  puts "#{height}: maximum sum is #{data[0][0]}, calculations took: #{(Time.now - initial_time) * 1000} milliseconds."
end

maximum_sum 20
maximum_sum 100
maximum_sum 500
