# frozen_string_literal: true

require "test_helper"

class TestLewwadooPalindrome < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::LewwadooPalindrome::VERSION
  end

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end
  
  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_letters
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters_and_digits
  end

  def test_digits
    assert_equal "123453", 123453.letters_and_digits
  end

  def test_integer_non_palindrome
    refute 21345.palindrome?
  end

  def test_integer_palindrome
    assert 1234321.palindrome?
  end
end
