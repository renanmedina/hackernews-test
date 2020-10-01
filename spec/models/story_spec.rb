require 'rails_helper'

RSpec.describe Story, type: :model do
  it { is_expected.to have_attr_accessor(:id) }
  it { is_expected.to have_attr_accessor(:kids) }
  it { is_expected.to have_attr_accessor(:text) }
  it { is_expected.to have_attr_accessor(:time) }
  it { is_expected.to have_attr_accessor(:title) }
  it { is_expected.to have_attr_accessor(:by) }
  it { is_expected.to have_attr_accessor(:descendants) }
  it { is_expected.to have_attr_accessor(:score) }
  it { is_expected.to have_attr_accessor(:type) }
  it { is_expected.to have_attr_accessor(:url) }
  it { is_expected.to have_attr_accessor(:dead) }
  it { is_expected.to have_attr_accessor(:deleted) }

  describe '.datetime' do
    subject { described_class.new(time: time) }

    context 'when create time is not defined' do
      let(:time) { nil }
      it { expect(subject.time).to be_nil }
    end

    context 'when create time is defined' do
      let(:time) { 1601566853 } # v0/item/24652182.json
      it { expect(subject.datetime).to be_kind_of(DateTime) }
    end
  end

  describe '.matches?' do
    subject { described_class.new(title: 'My friend starts her job today, after learning to program in prison') }
    it 'returns if a story titles matches a given text' do
      expect(subject.matches?('friend')).to be_truthy
    end
  end
end
