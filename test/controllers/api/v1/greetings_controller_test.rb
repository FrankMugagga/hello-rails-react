require 'test_helper'

class Api::V1::GreetingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get random' do
    get api_v1_greetings_random_url
    assert_response :success
  end
end
