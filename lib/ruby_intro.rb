# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = arr.any? ? arr.sum : 0
end

def max_2_sum arr
  # YOUR CODE HERE
  arr << 0 if ! arr.any?
  arr.sort!.reverse!
  result = arr.length == 1 ? arr[0] : arr[0] + arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # Boolean enumerable method
  arr.combination(2).any? {|a1,a2| a1 + a2 == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  result = /\A[a-z&&[^aeiou]]/i.match(s).nil? ? false : true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    result = /^[0?1?[^a-z]]/.match(s).nil? ? false : (s.to_i) % 4
    result = result == 0 ? true : false  
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize ( isbn, price )
    raise ArgumentError, 'price is invalid' if price <= 0 
    raise ArgumentError, 'ISBN is invalid' if isbn.empty?
    @isbn, @price = isbn, price
  end

  def price=(new_price)
    @price = Float(new_price) 
  end

  def isbn=(new_isbn)
    raise ArgumentError, 'ISBN is invalid' if isbn.nil?
    @isbn = new_isbn
  end

  def price_as_string
    result = "$#{'%.2f' % @price}"
  end

end
