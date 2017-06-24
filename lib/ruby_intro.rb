# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |n|
    sum += n
  end
  sum
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  arr.sort!
  sum = arr[arr.length - 1] + arr[arr.length - 2]
  sum
end

def sum_to_n? arr, n
  return false if arr.empty?
  arr.combination(2).any? { |a, b| a + b == n}
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  return false if s.empty?
  s[0].downcase =~ /[bcdfghjklmnpqrstvwxyz]+/
end

def binary_multiple_of_4? s
  return false if s.empty?
  s.to_i(2) % 4 == 0 if s.delete("01") == ""
end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f", @price)
  end
  
end
