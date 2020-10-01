module HackerNews
  class Item
    include ActiveModel::Model
    
    attr_accessor :id, :by, :kids, :score, :text, :time, :title,
                  :type, :url, :descendants, :dead, :deleted

    def datetime
      return Time.at(@time).to_datetime if !self.time.nil?
    end
  end
end
