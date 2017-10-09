IO.puts "Hello world from Elixir"

a = fn a,b -> a*b end # anonymous function

IO.puts a.(5,4) # to invoke a anonymous function is necessary the .

# lists and tuples are immutable

z = case {1,2,3} do
   {1,4,3} ->
       "nothing"
   {1,x,3} when x > 10 ->
	"yes"
   _ ->
	:ok
end

IO.puts z

keywords = [{:a, 1}, {:b,2}, {:c,3}]

IO.puts keywords[:a]

map = %{ :a => "oi" , :b => "tchau" , :c => "teste" }

IO.puts map[:b]	

# create users
users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

IO.puts users[:john].age

#update a user
users = put_in users[:john].age, 31

IO.puts users[:john].age

