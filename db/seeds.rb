# Create User
user = User.create(email: 'test@aol.com', username: 'Bart', password: 'password', password_confirmation: 'password')
Current.user = user

# Create Discussion
category = Category.create(name: 'General')

# Create Discussion
discussion = Discussion.create(name: 'Sample Discussion', user: Current.user, category: Category.first)

# Create Post
Post.create!(discussion: discussion, body: 'Hello World!')
