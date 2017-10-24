# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create!(username: 'max_the_great')
u2 = User.create!(username: 'maxine_the_pretty')
u3 = User.create!(username: 'maximus_the_brave')
u4 = User.create!(username: 'maximilian_the_funny')

a1 = Artwork.create!(title: 'Mona Lisa', image_url: 'leo.com', artist_id: u1.id)
a2 = Artwork.create!(title: 'Starry Night', image_url: 'vinny.com', artist_id: u2.id)
a3 = Artwork.create!(title: 'The Persistence of Memory', image_url: 'dali_city.com', artist_id: u3.id)
a4 = Artwork.create!(title: 'The Old Guitarist', image_url: 'picky.com', artist_id: u4.id)
a5 = Artwork.create!(title: 'The Weeping Woman', image_url: 'picky.com', artist_id: u4.id)

as1 = ArtworkShare.create!(artwork_id: a1.id, viewer_id: u2.id)
as2 = ArtworkShare.create!(artwork_id: a1.id, viewer_id: u3.id)
as3 = ArtworkShare.create!(artwork_id: a2.id, viewer_id: u1.id)
as4 = ArtworkShare.create!(artwork_id: a4.id, viewer_id: u2.id)
