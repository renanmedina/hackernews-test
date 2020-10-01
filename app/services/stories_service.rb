require 'net/http'
require 'json'

class StoriesService < HackerNewsService
  MAX_STORIES_SEARCH_ITEMS = 10

  def fetch_top(limit=15)
    top_story_ids = self.make_get_request("topstories.json")[0...limit]
    top_stories = []
    top_story_ids.each {|story_id| top_stories << StoryFactory.call(self.fetch_item(story_id))}
    return top_stories
  end

  def search(query, limit=MAX_STORIES_SEARCH_ITEMS)
    stories = []
    new_stories = self.make_get_request('newstories.json')[0...30]
    searched = new_stories.size
    while stories.count < limit
      story_item = StoryFactory.call(self.fetch_item(new_stories.shift))
      stories << story_item if story_item.id && story_item.matches?(query)
      searched -= 1
      break if searched == 0
    end 
    return stories
  end
  
end

