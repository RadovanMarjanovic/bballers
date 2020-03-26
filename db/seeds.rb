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
  user_id:      1,
  },
  {
  name:         'Court 3',
  description:  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias molestiae magni ad voluptatibus dignissimos aperiam velit deleniti. Dicta similique sapiente fugiat, unde aliquam illum tenetur quaerat nam veniam ipsam, corporis quia eaque sit.',
  address:      'Calle Embajadores',
  court_type:   'outdoor',
  capacity:     8,
  user_id:      1,
  }
]
Court.create!(courts_attributes)

photo_1 = URI.open("https://es.web.img2.acsta.net/c_215_290/medias/nmedia/18/35/38/61/19636935.jpg")
natalie = User.create!(email: "natalie@gmail.com", password: "123456")
natalie.photo.attach(io: photo_1, filename: 'nes.jpg', content_type: 'image/jpg')

photo_2 = URI.open("https://static.techspot.com/images2/news/bigimage/2019/03/2019-03-09-image-6.jpg")
rado = User.create!(email: 'rado@gmail.com', password: '123456')
rado.photo.attach(io: photo_2, filename: 'nes.jpg', content_type: 'image/jpg')


puts 'Finished!'
