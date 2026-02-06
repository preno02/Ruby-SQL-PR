# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************
# puts "hi"
# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
# new_company = Company.new
# p new_company_1
new_company_1 = Company.new

new_company_1["name"] = "Apple"
new_company_1["city"] = "Cupertino"
new_company_1["state"] = "CA"
new_company_1["url"] = "https//apple.com"

new_company_1.save

new_company_1 = Company.new
new_company_1["name"] = "Anthropic"
new_company_1["city"] = "San Francisco"
new_company_1["state"] = "CA"
new_company_1["url"] = "https//anthropic.com"

# p new_company
new_company_1.save

new_company_1 = Company.new
new_company_1["name"] = "Amazon"
new_company_1["city"] = "Seatle"
new_company_1["state"] = "WA"
new_company_1["url"] = "https//Amazon.com"

# p new_company
new_company_1.save

puts "Companies: #{Company.all.count}"

# 3. query companies table to find all row with California company
# 
cali_companies = Company.where({"state" => "CA"})
# p cali_companies
puts "California Companies: #{cali_companies.count}"

# <Company id: nil, name: nil, city: nil, state: nil, url: nil, created_at: nil, updated_at: nil>
# 4. query companies table to find single row for Apple
# apple = Company.where({ "name" => "Apple"})
# p apple

apple = Company.find_by({ "name" => "Apple"})
p apple


# 5. read a row's column value
puts apple ["url"]
# 6. update a row's column value

apple["url"] = "https://www.apple.com"
apple.save
p apple

# # 7. delete a row
# apple.destroy 
# puts "Companies: #{Company.all.count}"


### loop
companies = Company.all

for zebra in companies 
  puts zebra["name"]
end