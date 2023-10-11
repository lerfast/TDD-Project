class Solver
  def factorial(n)
    raise "Negative number error" if n < 0
    return 1 if n == 0
    n.downto(1).inject(:*)
  end
  
  def reverse(word)
    word.reverse
  end
  
  def fizzbuzz(n)
    return "fizzbuzz" if n % 3 == 0 && n % 5 == 0
    return "fizz" if n % 3 == 0
    return "buzz" if n % 5 == 0
    n.to_s
  end
end
