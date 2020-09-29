require 'test_helper'

class HackerNewsControllerTest < ActionDispatch::IntegrationTest
  test "should get topStories" do
    get hacker_news_topStories_url
    assert_response :success
  end

end
