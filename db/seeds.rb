# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Deleting all data..."

User.destroy_all
Message.destroy_all
Chatroom.destroy_all

puts "Creating users with ***🎨📸ATTACHED PHOTOS🎨📸***"

# USER_1
user_1 = User.create!(username: 'Guillem', password: 'password', email: "guillemdelas@hotmail.com")
avatar_1 = URI.open('https://source.unsplash.com/1600x900/?avatar,boy')
user_1.avatar.attach(io: avatar_1, filename: 'guillem_avatar.jpg', content_type: 'image/jpg')

#######################################################

# USER_2
user_2 = User.create!(username: 'Núria', password: 'password', email: "nuria@gmail.com")

# AVATAR_2
avatar_2 = URI.open('https://source.unsplash.com/1600x900/?avatar,woman')
user_2.avatar.attach(io: avatar_2, filename: 'nuria_avatar.jpg', content_type: 'image/jpg')

#######################################################

# USER_3
user_3 = User.create!(username: 'Ramon', password: 'password', email: "ramondelas@gmail.com")

# avatar_3
avatar_3 = URI.open('https://source.unsplash.com/1600x900/?avatar,man')
user_3.avatar.attach(io: avatar_3, filename: 'ramon_avatar.jpg', content_type: 'image/jpg')


#######################################################

# USER_4
user_4 = User.create!(username: 'Antonio', password: 'password', email: "amoralesrosa@gmail.com")

# AVATAR_4
avatar_4 = URI.open('https://source.unsplash.com/1600x900/?avatar,boy')
user_4.avatar.attach(io: avatar_4, filename: 'antonio_avatar.jpg', content_type: 'image/jpg')

#######################################################

# USER_5
user_5 = User.create!(username: 'Maricarmen', password: 'password', email: "maricarmen@gmail.com")

# AVATAR_5
avatar_5 = URI.open('https://source.unsplash.com/1600x900/?avatar,woman')
user_5.avatar.attach(io: avatar_5, filename: 'maricarmen_avatar.jpg', content_type: 'image/jpg')


#######################################################

puts "#{User.count} users created!"

puts "Now let's create some chatrooms with ***🎨📸ATTACHED PHOTOS🎨📸***"

# CHATROOM_1
chatroom_1 = Chatroom.create!(name: 'Learn JavaScript', category: 'programming', description: 'Hello! You just landed on the best chat for learning JS. Join in and share you knowledge while learning from others')

# IMAGE CHATROOM_1
image = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/480px-Unofficial_JavaScript_logo_2.svg.png')
chatroom_1.photo.attach(io: image, filename: 'javascript.png', content_type: 'image/png')

#######################################################

# CHATROOM_2
chatroom_2 = Chatroom.create!(name: 'Love at first sight', category: 'chatting', description: 'Do you believe in love at first sight? We do. If you do, join us. Do not hesitate and give love a chance.')

# IMAGE CHATROOM_2
image_2 = URI.open('https://i.ytimg.com/vi/JqvlqieYYow/maxresdefault.jpg')
chatroom_2.photo.attach(io: image_2, filename: 'love.jpg', content_type: 'image/jpg')

#######################################################

chatroom_3 = Chatroom.create!(name: 'Fortnite', category: 'gaming', description: "Do you like Fortnite? It does not matter if you are a competitive player or not. Come with us and play!")

# IMAGE CHATROOM_3
image_3 = URI.open('https://cdn2.unrealengine.com/15br-bplaunch-egs-s3-2560x1440-2560x1440-687570387.jpg')
chatroom_3.photo.attach(io: image_3, filename: 'fortnite.jpg', content_type: 'image/jpg')

#######################################################

# CHATROOM_4
chatroom_4 = Chatroom.create!(name: 'Math Problems', category: 'education', description: 'Problem solving * problem solving * problem solving = Problem solving ** 3. If you do not understand, then you need to join.')

# IMAGE CHATROOM_4
image_4 = URI.open('https://www.fife.ac.uk/media/3828/mathematics-png.jpg?anchor=center&mode=crop&width=1200&height=800&rnd=132155248940000000')
chatroom_4.photo.attach(io: image_4, filename: 'maths.jpg', content_type: 'image/jpg')

#######################################################

# CHATROOM_5
chatroom_5 = Chatroom.create!(name: 'Metallica fans', category: 'music', description: 'Do you love heavy metal and thrash? If you cry with Nothing Else Matters and get fully rage loaded while listening to Master Of Puppets, get the fuck inside!')

image_5 = URI.open('https://rockandblog.net/wp-content/uploads/2020/03/metallica-streaming-cuarentena.jpg')
chatroom_5.photo.attach(io: image_5, filename: 'metallica.jpg', content_type: 'image/jpg')

#######################################################

# CHATROOM_6
chatroom_6 = Chatroom.create!(name: "Rupaul's Drag Race", category: 'entertainment', description: "Hey Queen! Wheather you are a big queen, a dance queen, a comic queen, a fashion queen or whatever is in between, you will love this channel.")

image_6 = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/rpdr-s11-1920x1080-1566402935.jpg')
chatroom_6.photo.attach(io: image_6, filename: 'rupaul.jpg', content_type: 'image/jpg')

#######################################################

# CHATROOM_7
chatroom_7 = Chatroom.create!(name: 'Tell me why?', category: 'chatting', description: "Tell me why...Ain't nothin' but a heartache...Tell me why...Ain't nothin' but a mistake...Tell me why...I never wanna hear you say...I want it that way")

image_7 = URI.open('https://img.culturacolectiva.com/cdn-cgi/image/f=auto,w=1600,q=80,fit=contain/featured_image/2018/07/17/1531861321393/antes-y-despues-de-backstreet-boys.jpg')
chatroom_7.photo.attach(io: image_7, filename: 'backstreet_boys.jpg', content_type: 'image/jpg')

#######################################################

# CHATROOM_8
chatroom_8 = Chatroom.create!(name: "Stevie Nicks Concerts", category: 'music', description: 'We track every Stevie Nicks concert. Join if you are a bad witch!')

image_8 = URI.open('https://media.npr.org/assets/img/2018/01/29/gettyimages-84893122_wide-35df68852e9fba6c953c8de4946da82a5c47361a.jpg')
chatroom_8.photo.attach(io: image_8, filename: 'stevie_nicks.jpg', content_type: 'image/jpg')

#######################################################

# CHATROOM_9
chatroom_9 = Chatroom.create!(name: 'POSE', category: 'entertainment', description: 'Are you as obsessed with the show as wer are? Then you landed on the right spot! We watch together every single episode and discuss it afterwards.')

# IMAGE CHATROOM_9
image_9 = URI.open('https://images-na.ssl-images-amazon.com/images/I/A1vxgqF4I3L._RI_.jpg')
chatroom_9.photo.attach(io: image_9, filename: 'love.jpg', content_type: 'image/jpg')

puts "We're done!"
puts "NOT YET LISTILLO!"

puts "Populating some chatrooms with messages"

Message.create!(body: 'Hello World! Bienvenidos :)', user_id: user_1.id, chatroom_id: chatroom_1.id)
Message.create!(body: 'Cómo estáis? Soy nueva!', user_id: user_2.id, chatroom_id: chatroom_2.id)
Message.create!(body: 'Ostras que xulo!', user_id: user_3.id, chatroom_id: chatroom_3.id)
Message.create!(body: 'Holaaa! :D', user_id: user_4.id, chatroom_id: chatroom_4.id)
Message.create!(body: 'Hola grupo, soy Maricarmen!', user_id: user_5.id, chatroom_id: chatroom_5.id)

puts "NOW we're done here, honey... Enjoy!"