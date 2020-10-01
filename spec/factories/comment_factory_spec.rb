# frozen_string_literal: true

require 'rails_helper'

describe CommentFactory do
  let(:attributes) {
    {
      "by": "Chernobog",
      "id": 24652867,
      "kids": [
        24653231,
        24652911,
        24654825,
        24654196,
        24653684
      ],
      "parent": 24652182,
      "text": "I was convicted for drugs and firearms in Norway. The only time it has ever come up during my many years as a programmer, was when a consulting company I worked for had the police IT service as a candidate for my next project.<p>Since it was for the police, a background check would be required. I politely told my department head that I would not pass that, and a short summary of my case. At that time I had worked for about 2 years and got a kind &quot;we would never have guessed&quot; and &quot;you will get another project then&quot;.<p>As a side note: In our country, an employer needs a legitimate reason to do a background check, and they won&#x27;t see crimes that are not relevant, or for some crimes - too long ago.",
      "time": 1601569666,
      "type": "comment"
    }
  }

  subject { described_class.new(attributes) }

  describe '.call' do
    it 'returns a comment instance' do
      comment = subject.call
      expect(comment).to be_kind_of(HackerNews::Comment)
    end
  end

  describe '.is_relevant?' do
    it 'returns if a comment is relevant or not' do
      comment = subject.call
      expect(comment).to be_kind_of(HackerNews::Comment)
      expect(comment.is_relevant?).to be_true
    end
  end
end
