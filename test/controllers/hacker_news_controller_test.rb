require 'test_helper'

class HackerNewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hacker_news_index_url
    assert_response :success
  end
end
