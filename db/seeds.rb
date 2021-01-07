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

fake_phone_number = Faker::PhoneNumber.phone_number,
fake_goal = rand(500..10000)

10.times do 
    user = User.create!(
        name: Faker::Name.name,
        # email: "example@gmail.com"
    )

    user.update(email: "#{user.name}@gmail.com")
end

# 15.times do 
#     business = Business.create!(
#         name: Faker::Company.name,
#         description: Faker::Company.catch_phrase,
#         industry: Faker::Company.industry,
#         address: Faker::Address.full_address,
#         phone_number: Faker::PhoneNumber.phone_number,
#         # website: "www.example.com",
#         goal: rand(500..10000),
#         amount_raised: 0,
#         picture: 'https://www.ixxiyourworld.com/media/1676571/Mickey-Mouse-2.jpg?mode=crop&width=562&height=613'
#     )

#     business.update(website: "www.#{business.name}.com")
# end



Business.create!(
    name: "Empire Coffee and Tea",
    description: Faker::Company.catch_phrase,
    industry: 'Food',
    address: 'Hells Kitchen', 
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://media-cdn.tripadvisor.com/media/photo-s/08/6f/68/2f/empire-coffee-tea-company.jpg'
)

Business.create!(
    name: "Mynd Spa & Salon", 
    description: Faker::Company.catch_phrase,
    industry: 'Salon',
    address: 'Midtown East',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://mma.prnewswire.com/media/951164/Mynd_Spa_and_Salon.jpg?p=publish'
)

Business.create!(
    name: "Palomba Academy of Music",
    description: Faker::Company.catch_phrase,
    industry: 'School',
    address: 'Bronxwood',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://forgotten-ny.com/wp-content/uploads/2020/09/palomba2.jpg'
)

Business.create!(
    name: "Sun's Laundry",
    description: Faker::Company.catch_phrase,
    industry: 'Dry Cleaning',
    address: 'East Village',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://1.bp.blogspot.com/-Ybq2jgCD77s/X0q8p_7k9dI/AAAAAAADXO0/8Gy8y77KBDIokYP19DtSkBeAHpVXQq6TQCLcBGAsYHQ/s1600/EgnDjsxWsAA2-TC.jpg'
)

Business.create!(
    name: "Paris Blues",
    description: Faker::Company.catch_phrase,
    industry: 'Bar',
    address: 'Harlem',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://pyxis.nymag.com/v1/imgs/e4d/523/454e0c912ef73ad9debce0398c9c20dad4-paris-blues-lede.jpg'
)

Business.create!(
    name: "Frank's Cocktail Lounge",
    description: Faker::Company.catch_phrase,
    industry: 'Bar',
    address: 'Fort Greene',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://pyxis.nymag.com/v1/imgs/d80/07b/b75b6d0a6f238b63acf5b692c76eed346f-franks-cocktail-lounge-4.rsocial.w1200.jpg'
)


Business.create!(
    name: "New York Health & Racquet Club",
    description: Faker::Company.catch_phrase,
    industry: 'Fitness Studio',
    address: 'Upper East Side',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://images.localist.com/photos/224196/huge/27e491f30becc04d9038257cd18a3d55ba808db1.jpg'
)

Business.create!(
    name: "Glorias",
    description: Faker::Company.catch_phrase,
    industry: 'Restaurant',
    address: 'Crown Heights',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://cms.prod.nypr.digital/images/311612/fill-634x423/'
)

Business.create!(
    name: "China Chalet",
    description: Faker::Company.catch_phrase,
    industry: 'Restaurant',
    address: 'Financial District',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://static1.squarespace.com/static/5845d1c3e4fcb5c4ed9162ef/58461bdd403c669d2b9352b3/5c6c35c26e9a7f63c843ef55/1550686753991/DSC_0169.JPG?format=1500w'
)

Business.create!(
    name: "Olga's Pizza",
    description: Faker::Company.catch_phrase,
    industry: 'Restaurant',
    address: 'Harlem',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://images.gofundme.com/Pw-e0GfigZ8Te0ORdSqJ_-Wp37A=/1200x800/https://d2g8igdw686xgo.cloudfront.net/48251002_1590181007199991_r.jpeg'
)

Business.create!(
    name: "Cranberrys",
    description: Faker::Company.catch_phrase,
    industry: 'Coffee Shop',
    address: 'Brooklyn Heights',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://media-cdn.tripadvisor.com/media/photo-s/0f/e3/50/18/photo0jpg.jpg'
)

Business.create!(
    name: "De Luca General Store",
    description: Faker::Company.catch_phrase,
    industry: 'Retailer',
    address: 'Rosebank',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://image.silive.com/home/silive-media/width960/img/advance/photo/2014/12/23/-274bff15e415a5fc.jpg'
)

Business.create!(
    name: "Otto Boutique",
    description: Faker::Company.catch_phrase,
    industry: 'Clothing Shop',
    address: 'Park Slope',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://lh3.googleusercontent.com/proxy/ZLUuri6RLN1fI3qkwtvNUa4n1njqdCIgGvlYdfP0e4ptVVDxBoMnBJnvHEHnwdfaWTN3reaG4DLgafqvbVbaPkncSDoJHbtlbi-anNeVe58ssfdBuW5WlrTCQmt7gI0dkrUzw7na49VT1Q'
)

Business.create!(
    name: "Sushi West",
    description: Faker::Company.catch_phrase,
    industry: 'Restaurant',
    address: 'West Village',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://www.sushikatsuei.com/wp-content/uploads/2017/04/Sushi-Katsuei-Interior2-Photo-by-FoodNYC.jpg'
)


Business.create!(
    name: "La Sorrentina Ristorante",
    description: Faker::Company.catch_phrase,
    industry: 'Restaurant',
    address: 'Dyker Heights',
    phone_number: Faker::PhoneNumber.phone_number,
    goal: fake_goal,
    amount_raised: 0,
    picture: 'https://brooklynreporter.com/wp-content/uploads/2020/04/12311203_999278886777225_3096103568749752490_n_b79558a8b3136d2a6a80848ee99ea427_2000.jpg'
)

Business.all.each{|business| business.update(website: "www.#{business.name}.com")}


20.times do
    investment = Investment.create!(
        description: 'hello',
        amount: rand(50..300),
        user_id: User.all.sample.id,
        business_id: Business.all.sample.id
    )
end




