require "minitest/autorun"

class FunkMath
  def add(a, b)
    a + b
  end

  def divide(a, b)
    if b == 0
        raise ZeroDivisionError
    end
    a / b
  end

  def sum_array(a)
    sum = 0
    for num in a do 
        sum += num
    end
    sum
  end
end

class TestMath < Minitest::Test
  def setup
    @math = FunkMath.new
  end

  def test_add
    assert(@math.add(45, 20) == 65, "Failed add")
  end

  def test_divide
    assert(@math.divide(10, 5) == 2, "Failed divide")
  end

  def test_sum_array
    assert(@math.sum_array([5, 2, 3, 7]) == 17, "Failed sum array")
  end
end

# I think these tests should have included more edge cases (such as an empty array being added)
# They should also account for errors, such as a divide by zero or invalid inputs