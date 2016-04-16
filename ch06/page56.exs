defmodule Chop do
  def guess(actual, a..b) when a >= 1 and b >= 1 and actual in a..b do
    guess = div((b - a), 2) + a
    IO.puts "Is it #{guess}? (Range: #{a}..#{b})"
    _guess(actual,  guess, a..b)
  end
  
  def _guess(actual, guess, _) when guess == actual, do: IO.puts "It's #{guess}"

  def _guess(actual, guess, range) when guess < actual do
    _..b = range
    guess(actual, (guess+1)..b)
  end
  
  def _guess(actual, guess, range) when guess > actual do
    a.._ = range
    guess(actual, a..(guess-1))
  end
end

Chop.guess(777, 1..1_000_000)
