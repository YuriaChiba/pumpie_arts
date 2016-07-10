post = ["美術作品最高"]

category = ["油絵", "水彩画", "デッサン", "水墨画", "版画"]

30.times do |index|
  Product.create(title: "#{index}回目", detail: "#{index}回目の投稿です。#{product.sample}", category: "#{category.sample}")
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'emma', self_introduction: 'パリで風景の移り変わりを描いている美大生です。', location: 'paris', image_url: 'http://stat.news.ameba.jp/news_images/20131209/12/1b/88/j/o04800300e1383790847106_1.jpg')
