require 'helper'

class TestHominid < Test::Unit::TestCase
  
  VALID_API_KEY = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX-us1'
  INVALID_API_KEY = 'not_a_valid_api_key'
  
  should "raise an error if the API key is not provided" do
    assert_raise(ArgumentError) do
      Hominid::API.new()
    end
  end
  
  should "raise an error if the API key is malformed" do
    assert_raise(ArgumentError) do
      Hominid::API.new(INVALID_API_KEY)
    end
  end
  
  # TODO: Tests that mock API calls so that it is not hitting the actual
  #       Mailchimp API during testing.
  
end
