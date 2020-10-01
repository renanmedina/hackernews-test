require 'rails_helper'

RSpec.describe HackerNews::Comment, type: :model do
  it { is_expected.to have_attr_accessor(:by) }
  it { is_expected.to have_attr_accessor(:dead) }
  it { is_expected.to have_attr_accessor(:descendants) }
  it { is_expected.to have_attr_accessor(:parent) }
  it { is_expected.to have_attr_accessor(:deleted) }
  it { is_expected.to have_attr_accessor(:id) }
  it { is_expected.to have_attr_accessor(:kids) }
  it { is_expected.to have_attr_accessor(:parent) }
  it { is_expected.to have_attr_accessor(:score) }
  it { is_expected.to have_attr_accessor(:text) }
  it { is_expected.to have_attr_accessor(:time) }
  it { is_expected.to have_attr_accessor(:title) }
  it { is_expected.to have_attr_accessor(:type) }
  it { is_expected.to have_attr_accessor(:url) }
end
