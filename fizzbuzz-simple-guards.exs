#! /usr/bin/env elixir
# we include the above line to let the shell know
# what interpreter should used in the case that this
# file is executable

# remember the rules:
# - if the number is divisible by 3, print 'fizz'
# - if the number is divisible by 5, print 'buzz'
# - if the number is divisible by 3 AND 5, print 'fizzbuzz'
# - otherwise, print the number

# As in fizzbuzz-simple.exs, we can use a Range and Enum function.
# But instead of using cond, we'll use guards.
# A guard is something used to restrict the arguments of a function --
# much like a cond, it will use whichever matches.
# Not everything can be a guard, only simple expressions; here, however, the
# expression we're using is simple enough, so we can use it as a guard.
Enum.each(0..100, fn
  x when 0 === rem(x, 15) -> IO.puts("fizzbuzz")
  x when 0 === rem(x, 5) -> IO.puts("buzz")
  x when 0 === rem(x, 3) -> IO.puts("fizz")
  x when x -> IO.puts(x)
end)
