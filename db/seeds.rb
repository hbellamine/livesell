# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




ProductColor.destroy_all
ProductShoesize.destroy_all
Color.destroy_all
Shoesize.destroy_all
Selection.destroy_all
ProductSize.destroy_all

Product.destroy_all
Size.destroy_all

sizes = %w(S M L XL XXL)
sizes.each do |size|
  Size.create!(name: size)
end

colors = %W(Black Blue Green Pink Purple Red White Yellow)
colors.each do |color|
  Color.create!(name: color)
end


shoesizes = %W(36 37 38 39 40 41 42)
shoesizes.each do |shoesize|
  Shoesize.create!(name: shoesize)
end
