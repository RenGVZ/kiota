LAYOUT = ["1LDK"]
CITY = ["Meguro", "Ebisu", "Shibuya"]
INFO = ["Elegant style", "Modern style", "Close to staion"]

# platform: PLATFORMS.sample

require 'faker'
require "open-uri"

PropertyViewing.destroy_all
Property.destroy_all
User.destroy_all


puts "Creating developer accounts..."
User.create(email:"nii@gmail.com",password:"123456")
User.create(email:"gavin@gmail.com",password:"123456")
User.create(email:"shouko@gmail.com",password:"123456")
User.create(email:"yann@gmail.com",password:"123456")


puts "Creating properties..."

property = Property.new(
      information: "A apartment with rooftop",
      price: 140000,
      distance_to_station: 9,
      pets: false,
      distance_to_supermarket: 11,
      age: 8,
      floor: 11,
      distance_to_park: 5,
      cafe_nearby: false,
      bar_nearby: true,
      size: 42,
      layout: "1LDK",
      location: "Roppongi",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 140000,
      key_money: 140000,
      initial_cost: 420000
      )
    file = URI.open("https://www.yuuki-home.co.jp/upload/image/article_1_916_1499062310.jpg")
    property.photos.attach(io: file, filename: "room1.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.r-store.jp/photo/roominfo/photo/building/101792/101792_01_ip_normal.jpg")
    property.photos.attach(io: file, filename: "room11.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 1 created"

property = Property.new(
      information: "Big room",
      price: 130000,
      distance_to_station: 10,
      pets: true,
      distance_to_supermarket: 5,
      age: 2,
      floor: 1,
      distance_to_park: 5,
      cafe_nearby: true,
      bar_nearby: false,
      size: 50,
      layout: "1DK",
      location: "Roppongi",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 130000,
      key_money: 130000,
      initial_cost: 390000
      )
    file = URI.open("https://www.athome.co.jp/image_files/path/0D1vU0R5sBwig8cfqsEF9w==.jpeg?width=640&height=640&margin=true")
    property.photos.attach(io: file, filename: "room2.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.athome.co.jp/image_files/path/0D1vU0R5sBy5VzpbrzoHNg==.jpeg?width=640&height=640&margin=true")
    property.photos.attach(io: file, filename: "room22.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 2 created"

property = Property.new(
      information: "A one bedroom apartment",
      price: 110000,
      distance_to_station: 20,
      pets: true,
      distance_to_supermarket: 5,
      age: 6,
      floor: 2,
      distance_to_park: 13,
      cafe_nearby: true,
      bar_nearby: false,
      size: 40,
      layout: "1DK",
      location: "Shimokitazawa",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 110000,
      key_money: 110000,
      initial_cost: 330000
      )
    file = URI.open("https://i.ytimg.com/vi/BXwDNp2eAvM/maxresdefault.jpg")
    property.photos.attach(io: file, filename: "room3.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://hoap.tokyo/wp-content/uploads/2017/04/MG_5740.jpg")
    property.photos.attach(io: file, filename: "room33.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 3 created"

property = Property.new(
      information: "A one bedroom apartment",
      price: 90000,
      distance_to_station: 11,
      pets: false,
      distance_to_supermarket: 12,
      age: 9,
      floor: 1,
      distance_to_park: 12,
      cafe_nearby: true,
      bar_nearby: true,
      size: 43,
      layout: "1DK",
      location: "Ebisu",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 90000,
      key_money: 90000,
      initial_cost: 270000
      )
    file = URI.open("https://apartment-japan.tokyo/rent/wp-content/uploads/2016/01/CIMG1992.jpg")
    property.photos.attach(io: file, filename: "room4.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.r-store.jp/photo/roominfo/photo/building/225800/225800_02_size6.jpg?20200207060301")
    property.photos.attach(io: file, filename: "room44.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 4 created"

property = Property.new(
      information: "A one bedroom apartment",
      price: 100000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 2,
      floor: 1,
      distance_to_park: 10,
      cafe_nearby: false,
      bar_nearby: true,
      size: 50,
      layout: "1DK",
      location: "Omotesando",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 100000,
      key_money: 100000,
      initial_cost: 300000
      )
    file = URI.open("https://www.r-store.jp/photo/roominfo/photo/building/224461/224461_14_size6.jpg?20200503161430")
    property.photos.attach(io: file, filename: "room5.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.r-store.jp/photo/roominfo/photo/building/224461/224461_01_size6.jpg?20200503161430")
    property.photos.attach(io: file, filename: "room55.jpg", content_type: 'image/jpg')
    property.save!
   
    puts "Property 5 created"

property = Property.new(
      information: "A one bedroom apartment",
      price: 80000,
      distance_to_station: 15,
      pets: false,
      distance_to_supermarket: 10,
      age: 2,
      floor: 4,
      distance_to_park: 10,
      cafe_nearby: false,
      bar_nearby: true,
      size: 35,
      layout: "1LDK",
      location: "Meguro",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 80000,
      key_money: 80000,
      initial_cost: 240000
      )
    file = URI.open("https://images.es-e-bukken.com/building/0/000/179/125/1962724.jpg")
    property.photos.attach(io: file, filename: "room6.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/06/IMG_9967.jpg")
    property.photos.attach(io: file, filename: "room66.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 6 created"

property = Property.new(
      information: "A one bedroom apartment",
      price: 70000,
      distance_to_station: 15,
      pets: false,
      distance_to_supermarket: 10,
      age: 8,
      floor: 4,
      distance_to_park: 10,
      cafe_nearby: true,
      bar_nearby: true,
      size: 35,
      layout: "1DK",
      location: "Roppongi",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 70000,
      key_money: 70000,
      initial_cost: 210000
      )
    file = URI.open("https://www.r-store.jp/photo/roominfo/photo/building/230188/230188_01_size6.jpg?20200503162614")
    property.photos.attach(io: file, filename: "room7.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.r-store.jp/photo/roominfo/photo/building/230188/230188_04_size6.jpg?20200503162614")
    property.photos.attach(io: file, filename: "room77.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 7 created"

property = Property.new(
      information: "A spacious home",
      price: 110000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 0,
      floor: 1,
      distance_to_park: 10,
      cafe_nearby: true,
      bar_nearby: false,
      size: 60,
      layout: "1LDK",
      location: "Kichijoji",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 110000,
      key_money: 0,
      initial_cost: 220000
      )
    file = URI.open("http://hoap.tokyo/wp-content/uploads/2017/08/Noda-House_-045-900x900.jpg")
    property.photos.attach(io: file, filename: "room8.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("http://hoap.tokyo/wp-content/uploads/2017/08/Noda-House_-050-960x960.jpg")
    property.photos.attach(io: file, filename: "room88.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 8 created"

property = Property.new(
      information: "Big room",
      price: 130000,
      distance_to_station: 10,
      pets: true,
      distance_to_supermarket: 5,
      age: 2,
      floor: 1,
      distance_to_park: 5,
      cafe_nearby: true,
      bar_nearby: false,
      size: 50,
      layout: "1DK",
      location: "Ebisu",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 130000,
      key_money: 130000,
      initial_cost: 390000
      )
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2020/04/IMG_2297.jpg")
    property.photos.attach(io: file, filename: "room9.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("http://hoap.tokyo/wp-content/uploads/2015/11/01.jpg")
    property.photos.attach(io: file, filename: "room99.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 9 created"

property = Property.new(
      information: "A one bedroom apartment",
      price: 95000,
      distance_to_station: 15,
      pets: true,
      distance_to_supermarket: 5,
      age: 8,
      floor: 2,
      distance_to_park: 5,
      cafe_nearby: true,
      bar_nearby: true,
      size: 50,
      layout: "1LDK",
      location: "Kichijoji",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 95000,
      key_money: 0,
      initial_cost: 190000
      )
    file = URI.open("https://shootest.jp/wp-content/uploads/2020/03/iwai-omotesando-8.jpg")
    property.photos.attach(io: file, filename: "room1000.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://shootest.jp/wp-content/uploads/2019/07/IMG_002.jpg")
    property.photos.attach(io: file, filename: "room100.jpg", content_type: 'image/jpg')
    property.save!
    
    puts "Property 10 created"

property = Property.new(
      information: "Big room",
      price: 130000,
      distance_to_station: 10,
      pets: true,
      distance_to_supermarket: 5,
      age: 2,
      floor: 1,
      distance_to_park: 5,
      cafe_nearby: true,
      bar_nearby: true,
      size: 80,
      layout: "1DK",
      location: "Kichijoji",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 130000,
      key_money: 130000,
      initial_cost: 390000
      )
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2020/03/IMG_6473.jpg")
    property.photos.attach(io: file, filename: "room11.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2020/04/IMG_6633.jpg")
    property.photos.attach(io: file, filename: "room111.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 11 created"

property = Property.new(
      information: "Big room",
      price: 130000,
      distance_to_station: 10,
      pets: true,
      distance_to_supermarket: 5,
      age: 12,
      floor: 3,
      distance_to_park: 5,
      cafe_nearby: true,
      bar_nearby: true,
      size: 60,
      layout: "2DK",
      location: "Shimokitazawa",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 130000,
      key_money: 0,
      initial_cost: 260000
      )
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2020/01/IMG_1685.jpg")
    property.photos.attach(io: file, filename: "room12.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2020/04/IMG_2253.jpg")
    property.photos.attach(io: file, filename: "room112.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 12 created"   

property = Property.new(
      information: "Big room",
      price: 110000,
      distance_to_station: 7,
      pets: false,
      distance_to_supermarket: 2,
      age: 2,
      floor: 3,
      distance_to_park: 5,
      cafe_nearby: false,
      bar_nearby: true,
      size: 45,
      layout: "1LDK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 110000,
      key_money: 0,
      initial_cost: 220000
      )
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2020/02/IMG_1643.jpg")
    property.photos.attach(io: file, filename: "room13.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2020/02/IMG_1632.jpg")
    property.photos.attach(io: file, filename: "room113.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 13 created"   

property = Property.new(
      information: "Big room",
      price: 115000,
      distance_to_station: 5,
      pets: true,
      distance_to_supermarket: 2,
      age: 11,
      floor: 3,
      distance_to_park: 2,
      cafe_nearby: true,
      bar_nearby: false,
      size: 45,
      layout: "2LDK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 115000,
      key_money: 0,
      initial_cost: 230000
      )
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/08/IMG_0432.jpg")
    property.photos.attach(io: file, filename: "room14.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/08/IMG_0412.jpg")
    property.photos.attach(io: file, filename: "room114.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/08/IMG_0423.jpg")
    property.photos.attach(io: file, filename: "room1114.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 14 created"   

property = Property.new(
      information: "Big room",
      price: 90000,
      distance_to_station: 15,
      pets: true,
      distance_to_supermarket: 2,
      age: 1,
      floor: 1,
      distance_to_park: 2,
      cafe_nearby: true,
      bar_nearby: false,
      size: 55,
      layout: "2DK",
      location: "Meguro",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 90000,
      key_money: 100000,
      initial_cost: 280000
      )
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/12/IMG_1386.jpg")
    property.photos.attach(io: file, filename: "room15.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/12/IMG_1384.jpg")
    property.photos.attach(io: file, filename: "room115.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/12/IMG_1376.jpg")
    property.photos.attach(io: file, filename: "room1115.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 15 created"

property = Property.new(
      information: "Big room",
      price: 130000,
      distance_to_station: 6,
      pets: true,
      distance_to_supermarket: 7,
      age: 7,
      floor: 1,
      distance_to_park:7,
      cafe_nearby: false,
      bar_nearby: true,
      size: 76,
      layout: "2LDK",
      location: "Omotesando",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 130000,
      key_money: 130000,
      initial_cost: 390000
      )
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/11/IMG_5495.jpg")
    property.photos.attach(io: file, filename: "room116.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://www.zeroapa.com/wp02/wp-content/uploads/2019/11/IMG_5489.jpg")
    property.photos.attach(io: file, filename: "room1116.jpg", content_type: 'image/jpg')
    property.save!

    puts "Property 16 created"


puts 'Finished!'
