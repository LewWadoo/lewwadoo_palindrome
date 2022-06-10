# frozen_string_literal: true

require_relative "lewwadoo_palindrome/version"

module Palindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters_and_digits
    to_s.scan(/[a-z\d]/i).join
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    letters_and_digits.downcase
  end
end

class String
  include Palindrome
end

class Integer
  include Palindrome
end
