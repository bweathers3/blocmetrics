
 5.times do
   User.create!(
   email:     Faker::Internet.email ,
   password: "password",
   confirmed_at: Date.today
   )
 end

 users = User.all

 12.times do
      registered_applications = RegisteredApplication.create!(
      user:   users.sample,
      name:   Faker::Company.name ,
      url:    Faker::Internet.url('example.com')
   )

end

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{RegisteredApplication.count} posts created"
