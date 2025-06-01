# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
users = User.create([
  { name: "Abdo", email: "hager@gmail.com" },
  { name: "Mona", email: "salwa@gmail.com" }
])

posts = Post.create([
  { title: "Post 1", body: "Hello World", user_id: users[0].id },
  { title: "Post 2", body: "Second one", user_id: users[1].id }
])

editors = Editor.create([
  { name: "Editor A" },
  { name: "Editor B" }
])

posts[0].editors << editors[0]
posts[1].editors << [editors[0], editors[1]]