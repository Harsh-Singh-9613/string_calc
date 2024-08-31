class StringCalculator
  def add(numbers_str)
    return 0 if numbers_str.empty?
    return numbers_str.to_i if numbers_str.length == 1

    numbers_str.split(',').map(&:to_i).sum
  end
end