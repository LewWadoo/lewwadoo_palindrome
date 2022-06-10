# frozen_string_literal: true

require_relative "lewwadoo_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters
    letters_array = []
    for letter_index in 0..self.length - 1 do
      if (self[letter_index].match?(/[a-zA-Z]/))
        letters_array << self[letter_index]
      end
    end
    letters_array.join
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    scan(/[a-z]/i).join.downcase
  end
end
