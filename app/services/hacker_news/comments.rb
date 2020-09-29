require 'net/http'
require 'json'

module HackerNews 
  class Comments < HackerNewsService
    MAX_RELEVANT_COMMENTS = 10

    def fetch_relevant_comments(story_id, limit=MAX_RELEVANT_COMMENTS)
      story = self.fetch_item(story_id)
      story['kids'] = story['kids'][0...limit] unless limit <= 0
      comments = []
      story['kids'].each { |comment_id| 
        comment_item = CommentFactory.call(self.fetch_item(comment_id))
        comments << comment_item if comment_item.is_relevant?
      }

      return comments
    end
  end
end
