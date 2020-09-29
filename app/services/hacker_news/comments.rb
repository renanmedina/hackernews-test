require 'net/http'
require 'json'

module HackerNews 
  class Comments < HackerNewsService
    def fetch_relevant_comments(story_id, limit=10)
      comments = []
      story = self.fetch_item(story_id)
      story['kids'] = story['kids'].slice!(0, limit) unless limit <= 0
      story['kids'].each { |comment_id| 
        comment = CommentFactory.call(self.fetch_item(comment_id))
        comments << comment if comment.is_relevant?
      }

      return comments
    end
  end
end
