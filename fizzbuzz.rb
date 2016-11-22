# frozen_string_literal: true
FIZZ = 'Fizz'
BUZZ = 'Buzz'

def divisible_by?(numerator, denominator)
  (numerator % denominator).zero?
end

def fizzbuzz(range, triggers)
  range.each do |i|
    result = []
    triggers.each do |divisor, text|
      result << text if divisible_by?(i, divisor)
    end
    p result.empty? ? i : result.join
  end
end

fizzbuzz(1..100, [[3, 'Fizz'], [5, 'Buzz']])

