require 'rails_helper'

RSpec.describe StoriesService, type: :model do

  subject { described_class.new }

  describe '.fetch_top' do
    context 'when limit is set' do
      it 'returns an array of stories by the limit passed' do
        top_stories = subject.fetch_top(1)
        expect(top_stories).to be_an_instance_of(Array)
        expect(top_stories.size).to eq(1)
      end
    end

    context 'when limit is not set' do
      it 'returns an array of stories with default 15 items' do
        top_stories = subject.fetch_top
        expect(top_stories).to be_kind_of(Array)
        expect(top_stories.size).to eq(15)
      end
    end
  end

  describe '.search' do 
    it 'returns an array of matched stories' do
      found_stories = subject.search('rule')
      expect(found_stories).to be_an_instance_of(Array)
      expect(found_stories[0]).to be_kind_of(Story)
    end
  end

end