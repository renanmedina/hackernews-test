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
      ],
      "score": 394,
      "time": 1601566853,
      "title": "My friend starts her job today, after learning to program in prison",
      "type": "story",
      "url": "https://twitter.com/jessicamckellar/status/1311349439479463937"
    }
  }

  describe '.call' do
    it 'returns a story instance' do
      story = described_class.call(attributes)
      expect(story).to be_kind_of(Story)
    end
  end
end
