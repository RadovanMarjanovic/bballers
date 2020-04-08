# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Court.destroy_all
User.destroy_all

# COURTS
puts 'Creating courts...'
courts_attributes = [
  {
  name:         'Court 1',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit, ea facilis id natus eveniet. Eveniet alias suscipit earum dignissimos accusantium provident eos eaque ipsa voluptatibus error.',
  address:      'Calle Sierra Toledana',
  court_type:   'outdoor',
  capacity:     10,
  user_id:      1,
  },
  {
  name:         'Court 2',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit, ea facilis id natus eveniet. Eveniet alias suscipit earum dignissimos accusantium provident eos eaque ipsa voluptatibus error.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat, obcaecati.',
  address:      'Emilio Carrere 10',
  court_type:   'outdoor',
  capacity:     13,
  user_id:      2,
  },
  {
  name:         'Court 3',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit.',
  address:      'Calle Embajadores',
  court_type:   'outdoor',
  capacity:     8,
  user_id:      2,
  },
  {
  name:         'Court 4',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit.',
  address:      'Calle de Bravo Murillo',
  court_type:   'outdoor',
  capacity:     15,
  user_id:      1,
  },
  {
  name:         'Court 5',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit.',
  address:      'Calle de Samaria',
  court_type:   'outdoor',
  capacity:     20,
  user_id:      1,
  },
  {
  name:         'Court 6',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit.',
  address:      'Calle de Lira',
  court_type:   'outdoor',
  capacity:     15,
  user_id:      3,
  },
  {
  name:         'Court 7',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit.',
  address:      'Calle Perseo',
  court_type:   'outdoor',
  capacity:     14,
  user_id:      5,
  },
  {
  name:         'Court 8',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit.',
  address:      'Calle Dr. Velasco',
  court_type:   'outdoor',
  capacity:     15,
  user_id:      5,
  },
  {
  name:         'Court 9',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit.',
  address:      'Ronda de Atocha',
  court_type:   'outdoor',
  capacity:     14,
  user_id:      4,
  },
  {
  name:         'Court 10',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit.',
  address:      'Calle del Hospital',
  court_type:   'outdoor',
  capacity:     15,
  user_id:      3,
  }
]
Court.create!(courts_attributes)


# USERS

natalie = User.create!(username: "natalie", email: "natalie@gmail.com", password: "123456")
photo_1 = URI.open("https://es.web.img2.acsta.net/c_215_290/medias/nmedia/18/35/38/61/19636935.jpg")
natalie.photo.attach(io: photo_1, filename: 'nes.jpg', content_type: 'image/jpg')

rado = User.create!(username: "rado", email: 'rado@gmail.com', password: '123456')
photo_2 = URI.open("https://static.techspot.com/images2/news/bigimage/2019/03/2019-03-09-image-6.jpg")
rado.photo.attach(io: photo_2, filename: 'nes.jpg', content_type: 'image/jpg')

marko = User.create!(username: "marko", email: 'marko@gmail.com', password: '123456')
photo_3 = URI.open("https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80")
marko.photo.attach(io: photo_3, filename: 'nes.jpg', content_type: 'image/jpg')

djordje = User.create!(username: "djordje", email: 'djordje@gmail.com', password: '123456')
photo_4 = URI.open("https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
djordje.photo.attach(io: photo_4, filename: 'nes.jpg', content_type: 'image/jpg')

vlada = User.create!(username: "vlada", email: 'vlada@gmail.com', password: '123456')
photo_5 = URI.open("https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
vlada.photo.attach(io: photo_5, filename: 'nes.jpg', content_type: 'image/jpg')

puts 'Finished!'


























