require 'rails_helper'

RSpec.describe ItemFactory do
  let(:attributes) {
    {
      "by": "danso",
      "descendants": 305,
      "id": 24652182,
      "kids": [
        24652867,
      ],
      "score": 394,
      "time": 1601566853,
      "title": "My friend starts her job today, after learning to program in prison",
      "type": "story",
      "url": "https://twitter.com/jessicamckellar/status/1311349439479463937"
    }
  }

  describe '.call' do
    it 'returns a item instance' do
      comment = described_class.call(attributes)
      expect(comment).to be_kind_of(Item)
    end
  end
end
