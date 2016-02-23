def generate_triangle height
  data = ''
  1.upto(height) { |row|
    1.upto(row) {
      data += rand(100).to_s + ' '
    }
    data += "\n"
  }
  data
end

File.open("100.txt", 'w') {|f| f.write(generate_triangle(100))}
File.open("20.txt", 'w') {|f| f.write(generate_triangle(20))}
File.open("500.txt", 'w') {|f| f.write(generate_triangle(500))}
