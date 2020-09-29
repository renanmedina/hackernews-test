module HackerNews
  class Comment < Item
    RELEVANT_COMMENT_WORDS = 20

    def is_relevant?
      !@deleted && @text.split(' ').size >= RELEVANT_COMMENT_WORDS
    end

  end
end
