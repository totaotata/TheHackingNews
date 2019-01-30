# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Link.destroy_all
Comment.destroy_all
10.times do
  user = User.create!(name: Faker::StarWars.droid)
end
10.times do
  link = Link.create!(url: Faker::Internet.url, user_id: User.order("RANDOM()").first.id)
end
# 10.times do
#   comment = Comment.create!(user_id: User.order("RANDOM()").first.id, link_id: Link.order("RANDOM()").first.id, comment_id: Comment.order("RANDOM()").first.id)
# end
