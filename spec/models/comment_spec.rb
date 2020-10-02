require 'rails_helper'

RSpec.describe Comment, type: :model do
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
  it { is_expected.to have_attr_accessor(:parent) }

  describe '.is_relevant?' do
    it 'returns if a comment is relevant' do
      comment = described_class.new(text: "I was convicted for drugs and firearms in Norway. The only time it has ever come up during my many years as a programmer, was when a consulting company I worked for had the police IT service as a candidate for my next project.<p>Since it was for the police, a background check would be required. I politely told my department head that I would not pass that, and a short summary of my case. At that time I had worked for about 2 years and got a kind &quot;we would never have guessed&quot; and &quot;you will get another project then&quot;.<p>As a side note: In our country, an employer needs a legitimate reason to do a background check, and they won&#x27;t see crimes that are not relevant, or for some crimes - too long ago.")
      expect(comment).to be_kind_of(Comment)
      expect(comment.is_relevant?).to be_truthy
    end
  end
end
