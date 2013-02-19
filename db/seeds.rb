require 'faker'

10.times do
  Item.create(:name => Faker::Company.bs,
              :position => rand(1..50))
end