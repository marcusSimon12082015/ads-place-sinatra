#create conditions
newCondition = Condition.create(condition_name:"New")
likeNew = Condition.create(condition_name:"Like New")
used = Condition.create(condition_name:"Used")

#create categories
books = Category.create(category_name:"Books")
clothing = Category.create(category_name:"Clothing")
boats = Category.create(category_name:"Boats")
art = Category.create(category_name:"Art")
antiques = Category.create(category_name:"Antiques")
accessories = Category.create(category_name:"Accessories")
costumes = Category.create(category_name:"Costumes")
exercise = Category.create(category_name:"Exercise")
bikes = Category.create(category_name:"Bikes")

#create user
marcus = User.create(email:"marcus@email.com",password:"11111111")
jeff = User.create(email:"jeff@email.com",password:"22222222")
greg = User.create(email:"greg@email.com",password:"22222222")

#create ads
ad1 = Ad.create(
  description:"Barely used bike!",
  price:45.0,
  quantity:1,
  location:"Hawai",
  condition:likeNew,category:bikes,user:marcus,
  image:File.open(ApplicationController.root + "/public/images/used_bikes.png"))

ad2 = Ad.create(
  description:"Barely used boat!",
  price:450.0,
  quantity:1,
  location:"New York",
  condition:used,category:boats,user:marcus,
  image:File.open(ApplicationController.root + "/public/images/used_boat.png")
)

ad3 = Ad.create(
  description:"Barely used bike!",
  price:450.0,
  quantity:1,
  location:"Hawai",
  condition:used,category:bikes,user:marcus,
  image:File.open(ApplicationController.root + "/public/images/used_bikes2.png")
)
marcus.ads << [ad1,ad2,ad3]

ad4 = Ad.create(
  description:"Wallets of all shapes and sizes!",
  price:45.0,
  quantity:5,
  location:"Washington",
  condition:newCondition,category:accessories,user:jeff,
  image:File.open(ApplicationController.root + "/public/images/accessories_1.png"))

ad5 = Ad.create(
  description:"We got belts for everyone!",
  price:65.0,
  quantity:10,
  location:"Washington",
  condition:newCondition,category:accessories,user:jeff,
  image:File.open(ApplicationController.root + "/public/images/accessories_2.png")
)

ad6 = Ad.create(
  description:"Come see our watches!",
  price:20.0,
  quantity:34,
  location:"Washington",
  condition:newCondition,category:accessories,user:jeff,
  image:File.open(ApplicationController.root + "/public/images/accessories_1.png")
)

jeff.ads << [ad4,ad5,ad6]

ad7 = Ad.create(
  description:"Gym Bike!",
  price:250.0,
  quantity:1,
  location:"Los Angeles",
  condition:likeNew,category:exercise,user:greg,
  image:File.open(ApplicationController.root + "/public/images/gym_bike.jpg"))

ad8 = Ad.create(
  description:"Bench press gain muscle",
  price:150.0,
  quantity:1,
  location:"Los Angeles",
  condition:likeNew,category:exercise,user:greg,
  image:File.open(ApplicationController.root + "/public/images/bench_press_used_2.jpg")
)

ad9 = Ad.create(
  description:"Bench press still!",
  price:200.0,
  quantity:1,
  location:"Los Angeles",
  condition:used,category:exercise,user:greg,
  image:File.open(ApplicationController.root + "/public/images/bench_press_used.jpg")
)

ad10 = Ad.create(
  description:"Selling Treadmill!",
  price:100.0,
  quantity:1,
  location:"Los Angeles",
  condition:used,category:exercise,user:greg,
  image:File.open(ApplicationController.root + "/public/images/used_treadmill.jpg")
)

ad11 = Ad.create(
  description:"My Old running shoes size 10!",
  price:10.0,
  quantity:1,
  location:"Los Angeles",
  condition:used,category:exercise,user:greg,
  image:File.open(ApplicationController.root + "/public/images/exercise1.jpg")
)

ad12 = Ad.create(
  description:"My old running shoes size 11!",
  price:5.0,
  quantity:1,
  location:"Los Angeles",
  condition:used,category:exercise,user:greg,
  image:File.open(ApplicationController.root + "/public/images/exercise2.png")
)

greg.ads << [ad7,ad8,ad9,ad10,ad11,ad12]
