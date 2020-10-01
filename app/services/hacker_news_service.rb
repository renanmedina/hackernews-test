require 'net/http'
require 'json'

class HackerNewsService
  API_URL = "https://hacker-news.firebaseio.com/v0/"

  def fetch_item(itemId)
    itemData = self.make_get_request("item/#{itemId}.json")
    return itemData
  end

  protected
  def make_get_request(path)
    url = URI("#{API_URL}#{path}")
    response = Net::HTTP.get_response(url)
    return {} unless response.code.to_i == 200
    JSON.parse(response.body) 
  end 
  
end

