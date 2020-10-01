require 'rails_helper'

RSpec.describe ItemFactory do
  describe '.call' do
    it 'instantes a new instance of the Item object' do
      expect(described_class).to receive(:new).with({}) { double(call: []) }
      described_class.call([])
    end

    it 'invokes #call' do
      expect_any_instance_of(described_class).to receive(:call)
      described_class.call([])
    end
  end

  describe '.call' do
    subject { described_class.new({ 'id' => '155874186' }) }

    it 'create Item instance' do
      expect { subject.call }.to be_kind_of(Item)
    end
  end
end
