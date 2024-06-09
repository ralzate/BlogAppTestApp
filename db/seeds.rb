require 'faker'

50.times do
  User.create(email: Faker::Internet.email, password: 'password')
end

User.all.each do |user|
  100.times do
    post = user.posts.create(
      title: Faker::Lorem.sentence,
      body: Faker::Lorem.paragraph,
      published_at: Faker::Time.backward(days: 365)
    )

    rand(11).times do
      post.comments.create(content: Faker::Lorem.sentence)
    end
  end
end