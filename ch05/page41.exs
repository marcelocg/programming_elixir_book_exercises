fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

fizz = fn (n) -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

# Page 41 recommends: "Do not use any language features that we haven’t yet covered in this book."
IO.puts "#{fizz.(10)}, #{fizz.(11)}, #{fizz.(12)}, #{fizz.(13)}, #{fizz.(14)}, #{fizz.(15)}, #{fizz.(16)}"
