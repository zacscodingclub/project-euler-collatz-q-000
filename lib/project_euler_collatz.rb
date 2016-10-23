def even_next(n)
  n/2
end

def odd_next(n)
  3*n + 1
end

def next_value(n)
  if n.even?
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  arr = []

  until n == 1
    arr << n
    n = next_value(n)
  end

  arr << n

  arr
end

def longest_collatz
  max_steps = 1
  answer = 0

  999999.downto(500000) do |n|
    x = n
    steps = 1

    steps = collatz(n).size

    if max_steps < steps
      max_steps  = steps
      answer = n
    end
  end

  answer
end
