#!/usr/bin/env ruby
# frozen_string_literal: true

def fizz_buzz(n)
  if (n % 15).zero?
    'FizzBuzz'
  elsif (n % 5).zero?
    'Buzz'
  elsif (n % 3).zero?
    'Fizz'
  else
    n.to_s
  end
end
