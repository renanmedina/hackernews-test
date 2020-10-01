require 'rails_helper'

RSpec.describe HackerNews::Comments, type: :model do

  subject { described_class.new }

  describe '.fetch_relevant_comments' do
    it 'returns an array of comments' do
      comments = subject.fetch_relevant_comments(24652182)
      expect(comments).to be_an_instance_of(Array)
      expect(comments[0]).to be_kind_of(HackerNews::Comment)
    end
  end
end