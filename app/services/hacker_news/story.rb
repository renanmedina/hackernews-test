module HackerNews
  class Story < Item

    def matches?(query)
      return !@deleted && @title.downcase.include?(query.downcase)
    end

  end
end
