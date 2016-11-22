# frozen_string_literal: true
FIZZ = 'Fizz'
BUZZ = 'Buzz'

def fizzbuzz(range, triggers)
  range.each do |i|
    result = []
    triggers.each do |divisor, text|
      result << text if (i % divisor).zero?
    end
    p result.empty? ? i : result.join
  end
end

fizzbuzz(1..100, [[3, 'Fizz'], [5, 'Buzz']])
