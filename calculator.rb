class StringCalculator

  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = parse_delimiter(numbers)
    nums = split_string_into_numbers(numbers, delimiter)
    check_for_negative_number(nums)
    nums.sum
  end

  private

  def parse_delimiter(numbers)
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2)[1]
    else
      delimiter = /,|\n/
    end
    [delimiter, numbers]
  end

  def split_string_into_numbers(numbers, delimiter)
    numbers.split(/#{delimiter}|,/).map(&:to_i)
  end

  def check_for_negative_number(nums)
    negatives = nums.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  end
end