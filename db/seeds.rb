User.destroy_all
Transaction.destroy_all
Product.destroy_all
Payment.destroy_all
Order.destroy_all
Delivery.destroy_all
Category.destroy_all
Cart.destroy_all

5.times do
    User.create(name: Faker::Name.name, age: Faker::Number.number, gender: Faker::Gender.type, 
        address: Faker::Address.full_address, contact: Faker::PhoneNumber.cell_phone, username: Faker::Name.name, password: Faker::String.random)
end

5.times do
    Product.create(name: Faker::Food.fruits, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), count: Faker::Number.number, description: Faker::Lorem.paragraph)
end
