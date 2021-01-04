# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "destroying old seeds..."
User.destroy_all
Business.destroy_all
Investment.destroy_all


10.times do 
    user = User.create!(
        name: Faker::Name.name,
        # email: "example@gmail.com"
    )

    user.update(email: "#{user.name}@gmail.com")
end

15.times do 
    business = Business.create!(
        name: Faker::Company.name,
        description: Faker::Company.catch_phrase,
        industry: Faker::Company.industry,
        address: Faker::Address.full_address,
        phone_number: Faker::PhoneNumber.phone_number,
        # website: "www.example.com",
        goal: rand(50000..1000000),
        amount_raised: rand(500..20000),
        picture: 'https://www.ixxiyourworld.com/media/1676571/Mickey-Mouse-2.jpg?mode=crop&width=562&height=613'
    )

    business.update(website: "www.#{business.name}.com")
end

20.times do
    investment = Investment.create!(
        description: 'hello',
        date: Time.now,
        amount: rand(10..1000000),
        user_id: User.all.sample.id,
        business_id: Business.all.sample.id
    )
end