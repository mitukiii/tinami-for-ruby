# coding: utf-8

module TINAMI
  # Custom error class for rescuing from all TINAMI errors
  class Error < StandardError
  end

  # Raised when TINAMI returns the stat fail
  class FailError < Error
  end

  # Raised when TINAMI returns the stat user_only
  class UserOnlyError < Error
  end

  # Raised when TINAMI returns the stat bookmark_user_only
  class BookmarkUserOnlyError < Error
  end
end
