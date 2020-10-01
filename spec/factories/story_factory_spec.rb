# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StoryFactory, type: :model do
  let(:attributes) {
    {
      "by": "danso",
      "descendants": 305,
      "id": 24652182,
      "kids": [
        24652867,
        24652508,
        24652939,
        24654892,
        24652458,
        24654812,
        24652599,
        24652590,
        24654544,
        24652428,
        24652763,
        24652677,
        24653753,
        24653981,
        24654116,
        24652520,
        24652591,
        24653974,
        24652952,
        24654351,
        24653078,
        24652850,
        24652955,
        24652414,
        24652401,
        24652502,
        24653093,
        24652690,
        24654634,
        24653610,
        24653114
      ],
      "score": 394,
      "time": 1601566853,
      "title": "My friend starts her job today, after learning to program in prison",
      "type": "story",
      "url": "https://twitter.com/jessicamckellar/status/1311349439479463937"
    }
  }

  subject { described_class.new(attributes) }

  describe 'call' do
    it 'returns a story instance' do
      story = subject.call
      expect(story).to be_kind_of(HackerNews::Story)
    end
  end

  describe 'matches?' do
    it 'returns if a story titles matches a query' do
      story = subject.call
      expect(story).to be_kind_of(HackerNews::Story)
      expect(story.matches?('friend')).to be_true
    end
  end
end
