# frozen_string_literal: true
def fizzbuzz(start, triggers)
  Enumerator.new do |yielder|
    i = start
    loop do
      parts = triggers.select { |_, predicate| predicate.call(i) }
      yielder << (parts.empty? ? i : parts.map(&:first).join)
      i += 1
    end
  end
end

p fizzbuzz(1,
           [
             ['Fizz', ->(i) { (i % 3).zero? }],
             ['Buzz', ->(i) { (i % 5).zero? }]
           ]).take(100)
