# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Article.all.each do |art|
# 	unless art.old_tags.empty?
# 		art.old_tags.split(", ").each do |tag|
# 			t = Tag.find_or_create_by_content(tag)
# 			art.tags << t
# 		end
# 	end
# end

# Article.all.each do |art|
# 	cat_content = art.old_category.downcase.gsub(" ", "-")
# 	cat = Category.find_or_create_by_content(cat_content)
# 	art.category = cat
# 	art.save!
# end

Article.all.each do |art|
	old_url = art.url
	month = old_url.scan(/\/(\d{1,2})\//).flatten[0].to_i
	day = old_url.scan(/\/\d{1,2}\/(\d{1,2})\//).flatten[0].to_i
	year = old_url.scan(/\/(\d{4})\//).flatten[0].to_i
	art.created_at = Time.new(year, month, day)
	art.save
end