# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(first_name: "Jon", last_name: "Benstent", email: "jonbenstent@gmail.com", password: "password")
User.create(first_name: "Jon", last_name: "Benstent", email: "jonbenstent@gmail.com", password: "password")
User.create(first_name: "Jon", last_name: "Benstent", email: "jonbenstent@gmail.com", password: "password")
User.create(first_name: "Jon", last_name: "Benstent", email: "jonbenstent@gmail.com", password: "password")

Song.create(artist: "Bon", title: "NO", user_id: 1)
Song.create(artist: "SD", title: "WOW", user_id: 2)
Song.create(artist: "TM", title: "sdfow", user_id: 3)
Song.create(artist: "YO", title: "sdfnow", user_id: 2)

Playlist.create(user_id: 1, song_id: 2)
Playlist.create(user_id: 1, song_id: 1)
Playlist.create(user_id: 1, song_id: 3)
Playlist.create(user_id: 1, song_id: 1)

Playlist.create(user_id: 2, song_id: 2)
Playlist.create(user_id: 2, song_id: 2)
Playlist.create(user_id: 2, song_id: 3)
Playlist.create(user_id: 2, song_id: 1)

Playlist.create(user_id: 3, song_id: 2)
Playlist.create(user_id: 3, song_id: 2)
Playlist.create(user_id: 3, song_id: 3)
Playlist.create(user_id: 3, song_id: 1)

Playlist.create(user_id: 4, song_id: 2)
Playlist.create(user_id: 4, song_id: 2)
Playlist.create(user_id: 4, song_id: 3)
Playlist.create(user_id: 4, song_id: 1)
