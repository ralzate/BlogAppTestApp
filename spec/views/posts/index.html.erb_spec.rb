RSpec.describe "posts/index", type: :view do
  it "displays all posts" do
    user = User.create!(email: "user@example.com", password: "password")
    posts = [
      Post.create!(title: "Title 1", body: "Body 1", published_at: Time.zone.now, user: user),
      Post.create!(title: "Title 2", body: "Body 2", published_at: Time.zone.now, user: user)
    ]
    allow(view).to receive(:will_paginate).and_return(nil) # Stub will_paginate method
    assign(:posts, posts)
    render
    expect(rendered).to include("Title 1")
    expect(rendered).to include("Title 2")
    expect(rendered).to include("Body 1")
    expect(rendered).to include("Body 2")
  end
end