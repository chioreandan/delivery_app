# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create(name:"American Burger",category:"Burger",price:10.21)
product.image.attach(io: File.open('app/assets/images/menu/americanBurger.jpg'),filename: 'americanBurger.jpg');

product = Product.create(name:"Grande Burger",category:"Burger",price:12.21)
product.image.attach(io: File.open('app/assets/images/menu/burger.jpg'),filename: 'burger.jpg');

product = Product.create(name:"Chicken Burger",category:"Burger",price:6.21)
product.image.attach(io: File.open('app/assets/images/menu/chickenburger.jpg'),filename: 'chickenburger.jpg');

product = Product.create(name:"Chiftelute cu piure",category:"Meal",price:9.21)
product.image.attach(io: File.open('app/assets/images/menu/chiftelute-cu-piure.jpg'),filename: 'chiftelute-cu-piure.jpg');

product = Product.create(name:"Chilli Con Carne",category:"Meal",price:5.21)
product.image.attach(io: File.open('app/assets/images/menu/chilli-con-carne.jpg'),filename: 'chilli-con-carne.jpg');

product = Product.create(name:"Pizza Deliciosa",category:"Pizza",price:17.21)
product.image.attach(io: File.open('app/assets/images/menu/deliciosa.jpg'),filename: 'deliciosa.jpg');

product = Product.create(name:"Paste Carbonara",category:"Pasta",price:11.21)
product.image.attach(io: File.open('app/assets/images/menu/paste.jpg'),filename: 'paste.jpg');

product = Product.create(name:"Supa crema de hribi",category:"Burger",price:10.21)
product.image.attach(io: File.open('app/assets/images/menu/supa-crema-de-hribi.jpg'),filename: 'supa-crema-de-hribi.jpg');
