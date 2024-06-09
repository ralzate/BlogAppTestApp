require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is valid with valid attributes" do
    user = create(:user)
    post = build(:post, user: user)
    expect(post).to be_valid
  end

  it "is not valid without a title" do
    user = create(:user)
    post = build(:post, title: nil, user: user)
    expect(post).to_not be_valid
  end

end