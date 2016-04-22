# – Convert a float to a string with two decimal digits. (Erlang)
IO.puts :io_lib.format("~10.2f", [3.14159])

# – Get the value of an operating-system environment variable. (Elixir)
IO.puts System.get_env("LOGNAME")

# – Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
IO.puts Path.extname("page63.exs")

# – Return the process’s current working directory. (Elixir)
IO.puts System.cwd()

# – Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)
# It's Poison: https://github.com/devinus/poison

# – Execute a command in your operating system’s shell.
IO.inspect System.cmd("ls", [], into: IO.stream(:stdio, :line))
