require "minitest/autorun"
# Number 4

class MathClass

  def add(a, b)
    0
  end

  def divide(a, b)
    0
  end

  def sum_array(a)
    0
  end

end



class TestMath < Minitest::Test
    def setup
      @math = MathClass.new
    end

    # Addition Tests
    def test_add_works
        assert_equal(6, @math.add(3, 3))
    end

    def test_add_with_negatives
        assert_equal(-2, @math.add(4, -6))
    end

    def test_adding_dec
        assert_equal(4.2, @math.add(2.1, 2.1))
    end

    # Division Tests
    def test_dividing_two_nums_works
        assert_equal(3, @math.divide(12, 4))
    end

    def test_divide_by_0_raises_error
        assert_raises(ZeroDivisionError) {@math.divide(2, 0)}
    end

    def test_quotient_with_remainder_returns_correct_float
        assert_equal(1.6, @math.divide(8, 5))
    end

    # Sumarray Tests
    def test_sum_array_works
        assert_equal(6, @math.sum_array([1, 2, 3]))
    end

    def test_empty_array_returns_0
        assert_equal(0, @math.sum_array([]))
    end
end

# These tests should probably include tests for invalid inputs


