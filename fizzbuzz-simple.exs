#!/usr/bin/env elixir
# we include the above line to let the shell know
# what interpreter should used in the case that this
# file is executable

# remember the rules:
# - if the number is divisible by 3, print 'fizz'
# - if the number is divisible by 5, print 'buzz'
# - if the number is divisible by 3 AND 5, print 'fizzbuzz'
# - otherwise, print the number

# we can solve our exercise with a simple script.
# we create a range (0..100) and use the Enum library
# to iterate over the resulting enumeration
Enum.each(0..100, fn(x) ->
  # cond is a good choice here; the first condition that matches
  # will fire. the `true` condition at the end will catch all other
  # cases.
  cond do
    # we could use multiple conditions here, however
    # since 5 and 3 share the common denominator 15, 
    # we can simply check for that.
    0 == rem(x,15) -> IO.puts "fizzbuzz"
    # the next two conditions could appear in either 
    # order, however a decreasing divisor feels more
    # consistent to me
    0 == rem(x,5)  -> IO.puts "buzz"
    0 == rem(x,3)  -> IO.puts "fizz"
    # this case catches 'the rest'
    true           -> IO.puts x
  end
end)
