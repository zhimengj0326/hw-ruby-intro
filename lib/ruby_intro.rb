# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  a = arr.combination(2).map{ |x| sum x }.index n
  if a == nil then
    return false
  end
  return true
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #empty
  return false if s.empty?
  
  #nonletters
  return false if !/[[:alpha:]]/.match(s[0])

  #consonant
  if /[qwrtypsdfghjklzxcvbnmQWRTYPASDFGHJKLZXCVBNM]/.match(s[0])
    return true
  end

  #else
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s =~ /^[01]+100$|^100$|^0$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :price, :isbn
  def initialize(i, p)
    if  i == ''
      raise ArgumentError.new("ISBN must be non empty string")
    end
    if p <= 0 
      raise ArgumentError.new("Price must be greater than zero")
    end
    @isbn = i
    @price = p
  end
  def price=(p)
    if p <= 0
      raise ArgumentError.new("Price must be greater than zero")
    end
    @price = p
  end
  def isbn=(i)
    if i == ''
      raise ArgumentError.new("ISBN must be non empty string")
    end
    @isbn = i
  end
  def price_as_string
    "$#{format "%.2f", @price}"
  end
end
