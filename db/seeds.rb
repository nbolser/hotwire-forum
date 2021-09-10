# Create User
user = User.create(email: 'test@aol.com', username: 'test', password: 'password', password_confirmation: 'password')
Current.user = user

# Create Discussion
discussion = Discussion.create(name: 'Sample Discussion', user: Current.user)

# Create Post
Post.create!(discussion: discussion, body: 'Hello World!')
