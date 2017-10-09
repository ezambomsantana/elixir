defmodule Test do
   def print(x) do
      IO.puts x
   end

   def count(0) do
      IO.puts 0
   end

   def count(x) do
      count(x - 1)
      IO.puts x
   end

   def sum_list([head | tail], accumulator) do
      sum_list(tail, head + accumulator)
   end

   def sum_list([], accumulator) do
      accumulator
   end

end
