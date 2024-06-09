require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "is valid with valid attributes" do
    post = create(:post)
    comment = build(:comment, post: post)
    expect(comment).to be_valid
  end

  it "is not valid without content" do
    post = create(:post)
    comment = build(:comment, content: nil, post: post)
    expect(comment).to_not be_valid
  end

  it "is not valid without a post" do
    comment = build(:comment, post: nil)
    expect(comment).to_not be_valid
  end

end