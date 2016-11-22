# frozen_string_literal: true
def fizzbuzz(range, triggers)
  range.each do |i|
    result = []
    triggers.each do |text, predicate|
      result << text if predicate.call(i)
    end
    p result.empty? ? i : result.join
  end
end

fizzbuzz(1..100,
         [
           ['Fizz', ->(i) { (i % 3).zero? }],
           ['Buzz', ->(i) { (i % 5).zero? }]
         ])
