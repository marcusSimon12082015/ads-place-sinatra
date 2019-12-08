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
jeff = User.create(email:"marcus@email.com",password:"22222222")
greg = User.create(email:"marcus@email.com",password:"22222222")

#create ads
ad1 = Ad.create(
  description:"Barely used bike!",
  price:45.0,
  quantity:1,
  location:"Hawai",
  condition:likeNew,category:bikes,user:marcus,
  image:""
)

ad2 = Ad.create(
  description:"Barely used boat!",
  price:450.0,
  quantity:1,
  location:"New York",
  condition:used,category:boats,user:marcus,
  image:""
)

ad3 = Ad.create(
  description:"Barely used bike!",
  price:450.0,
  quantity:1,
  location:"Hawai",
  condition:used,category:bikes,user:marcus,
  image:""
)
marcus.ads << [ad1,ad2,ad3]
