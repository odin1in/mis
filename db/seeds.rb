# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
  apple = Supplier.create(name: "Apple", address: "新北市新莊區中平路108號", phone: "02-2277-1882")
  Supplier.create(name: "Bulgari‎", address: "台中市中區公園路43號", phone: "042-2833-3121")
  ralph = Supplier.create(name: "Ralph lauren", address: " 650 Madison Ave., New York, NY 10022", phone: "212-318-7000")


  Product.create(title: "MacBook Pro 15'",image: "http://www.sweetwater.com/images/items/1800/MBP17i5-25-xlarge.jpg", price: "78000", content: "content of MBP 15", qoh: 10, supplier: apple, safety: 5, status: 1)
  Product.create(title: "MacBook Pro 13'",image: "http://www.saggiamente.com/wp-content/uploads/2010/04/slashgear-apple-mbp-17-inch_001-480x319.jpg", price: "58000", content: "content of MBP 13", qoh: 9, supplier: apple, safety: 3, status: 1)

  Product.create(title: "Blue Shirt",image: "http://casualdays.net/wp-content/uploads/2014/03/Polo-Ralph-lauren-short-sleeve.jpg", price: "6790", content: "blue shirt photo", qoh: 40, supplier: ralph, safety: 30, status: 1)
  Product.create(title: "coming Shirt",image: "http://static.eckerle.de/pictures/polo-ralph-lauren-poloshirt-weiss_4_0080671500_003_1.jpg", price: "9999", content: "coming shirt photo", qoh: 100, supplier: ralph, safety: 10, status: 0)
end