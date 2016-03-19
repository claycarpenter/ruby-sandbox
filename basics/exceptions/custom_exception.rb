
require 'pry'

# Can't initialize with message; for message must use raise syntax
class EmailDeliveryError < StandardError
  attr_reader :email

  def initialize(email)
    @email = email
  end
end

# Can initialize with message or via raise
class EnhancedEmailDeliveryError < StandardError
  attr_reader :email

  def initialize(email:, message: nil)
    super(message) if message

    @email = email
  end
end

binding.pry
