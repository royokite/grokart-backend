puts "🌱 Seeding..."

# Clear existing data (optional - uncomment if you want a clean slate)
Product.destroy_all
Category.destroy_all

# Create categories if they don't exist
categories = {
  1 => "dairy",
  2 => "meat",
  3 => "fruits",
  4 => "vegetables",
  5 => "drinks",
  6 => "pantry"
}

categories.each do |id, name|
  Category.find_or_create_by(id: id) do |category|
    category.category_name = name
    category.description = case name
      when "dairy" then "Food products made from milk. Such as cheese, cream, butter, ice cream and yogurt"
      when "meat" then "Flesh or other edible parts of animals used for food"
      when "fruits" then "Fruits are the fleshy or dry ripened ovaries of flowering plants, enclosing the seeds."
      when "vegetables" then "Vegetables are the edible portions of plants"
      when "drinks" then "Liquids intended for human consumption"
      when "pantry" then "Baked goods, eggs and snacks"
    end
  end
end

products_data = [
  {
    category_id: 1,
    image: "https://cdn.mafrservices.com/sys-master-root/hba/h06/16975375499294/43316_main.jpg?im=Resize=480",
    name: "Brookside Fresh Milk 500 ml",
    price: 65.00,
    count: 10,
    description: "Boxed fresh milk 500 ml from Brookside dairy farms",
  },
  {
    category_id: 1,
    image: "https://cdn.mafrservices.com/sys-master-root/hba/h06/16975375499294/43316_main.jpg?im=Resize=480",
    name: "Brookside Fresh Milk 500 ml",
    price: 65.00,
    count: 10,
    description: "Boxed fresh milk 500 ml from Brookside dairy farms",
  },
  {
    category_id: 2,
    image: "https://cdn.mafrservices.com/pim-content/KEN/media/product/122602/1729144804/122602_main.jpg?im=Resize=480",
    name: "Goat Ribs 500 g",
    price: 200.00,
    count: 5,
    description: "Freshly cut goat ribs",
  },
  {
    category_id: 3,
    image: "https://media.istockphoto.com/id/452352231/photo/pineapple.jpg?s=612x612&w=0&k=20&c=BioDwSdBPMlCpc56389y9JUsAJFGXkk5gr14R4hxikY=",
    name: "Pineapple",
    price: 99.00,
    count: 9,
    description: "An incredibly delicious, healthy tropical fruit",
  },
  {
    category_id: 4,
    image: "https://www.greendale.com/catalogimages/products/IMG_0384.jpg?w=840&h=495&mode=crop&scale=both&quality=80",
    name: "Fresh Tomatoes 1 kg",
    price: 80.00,
    count: 20,
    description: "Fresh greenhouse-grown tomatoes",
  },
  {
    category_id: 5,
    image: "https://cdn.mafrservices.com/sys-master-root/h3d/h46/16872066187294/33440_1.jpg?im=Resize=400",
    name: "Monster Energy Drink 500ml",
    price: 200.00,
    count: 10,
    description: "Original 500ml Monster energy drink",
  },
  {
    category_id: 6,
    image: "https://cdn.mafrservices.com/sys-master-root/h2c/h30/12681203351582/82694_Main.jpg?im=Resize=400",
    name: "Supa Loaf Milky White Bread 800g",
    price: 120.00,
    count: 6,
    description: "White milky bread from Festive",
  },
  {
    category_id: 3,
    image: "https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bunch-of-bananas-67e91d5.jpg",
    name: "Bananas",
    price: 80.00,
    count: 5,
    description: "Delicious bunch of fresh bananas",
  },
  {
    category_id: 4,
    image: "https://zucchini.co.ke/cdn/shop/products/0000000004614-removebg-preview-removebg-preview_1.jpg?v=1669704118",
    name: "Sukuma Wiki",
    price: 25.00,
    count: 12,
    description: "Fresh and leafy sukuma wiki bunch",
  },
  {
    category_id: 5,
    image: "https://dialacoke.com/media/catalog/product/cache/ea9fd91bf69f7931ab0fc6320db4b8ac/f/a/fanta-blackcurrant-pet-2l.jpg",
    name: "Fanta Blackcurrant 2L",
    price: 180.00,
    count: 5,
    description: "Fanta Blackcurrant PET Bottle 2L, Coca-Cola product",
  },
  {
    category_id: 1,
    image: "https://cdn.mafrservices.com/sys-master-root/hc7/h25/17307039957022/43364_main.jpg?im=Resize=480",
    name: "Ilara Thick & Creamy Yoghurt Strawberry 250ml",
    price: 65.00,
    count: 3,
    description: "Creamy strawberry flavored 250ml yoghurt",
  },
  {
    category_id: 2,
    image: "https://www.markwellfoods.com.au/wp-content/uploads/2022/03/screen-shot-2020-05-20-at-105115-am.png",
    name: "Tilapia Whole",
    price: 520.00,
    count: 3,
    description: "Whole fully grown tilapia fish",
  },
  {
    category_id: 6,
    image: "https://d16zmt6hgq1jhj.cloudfront.net/product/14069/WpJvI4yu3irdSxG1frnvv5AsufgEfVC9d2iRsKdi.jpg",
    name: "Isinya Eggs 12 Pieces",
    price: 243.00,
    count: 9,
    description: "A tray of a dozen eggs from Isinya",
  },
  {
    category_id: 2,
    image: "https://cdn.mafrservices.com/sys-master-root/ha1/h29/17537976762398/100530_main.jpg?im=Resize=480",
    name: "Chicken Drumstick 500 g",
    price: 305.00,
    count: 8,
    description: "A pack of plump chicken drumsticks",
  },
  {
    category_id: 3,
    image: "https://cdn.mafrservices.com/sys-master-root/h64/h2f/16872126152734/73095_main.jpg?im=Resize=400",
    name: "Assorted Apples - 4 pieces",
    price: 175.00,
    count: 16,
    description: "Assorted red and green apples, freshly harvested",
  },
  {
    category_id: 1,
    image: "https://cdn.mafrservices.com/sys-master-root/h9e/h23/49295523020830/197576_Main.jpg?im=Resize=480",
    name: "Lactasoy Soy Milk Original Sweetened 500ml",
    price: 175.00,
    count: 2,
    description: "Sweetened soy-based 500ml milk product",
  },
  {
    category_id: 5,
    image: "https://cdn.mafrservices.com/sys-master-root/h38/hc3/17289720791070/118059_main.jpg?im=Resize=400",
    name: "Gofrut Multifruit Juice 1L",
    price: 120.00,
    count: 5,
    description: "Ready to drink Gofrut mixed fruit juice 1L",
  },
  {
    category_id: 4,
    image: "https://cdn.mafrservices.com/sys-master-root/ha4/h5d/17013545336862/1514_main.jpg?im=Resize=400",
    name: "Carrots 1 kg",
    price: 145.00,
    count: 17,
    description: "Fresh and tasty carrots",
  },
  {
    category_id: 6,
    image: "https://cdn.mafrservices.com/sys-master-root/h5d/hca/17289958522910/134901_main.jpg?im=Resize=400",
    name: "Elbbin Multigrain Snacks Chocolate 50g",
    price: 70.00,
    count: 7,
    description: "Elbbin and nibble milk chocolate multigrain snacks are extremely tasty",
  },
  {
    category_id: 1,
    image: "https://cdn.mafrservices.com/sys-master-root/h76/h25/12681202925598/87128_Main.jpg?im=Resize=400",
    name: "Sirimon Cheddar Cheese 250g",
    price: 473.00,
    count: 4,
    description: "Natural, relatively hard, off-white, and sharp-tasting cheddar cheese",
  },
  {
    category_id: 2,
    image: "https://cdn.mafrservices.com/pim-content/KEN/media/product/2900/1737381603/2900_main.jpg?im=Resize=400",
    name: "Beef Rump Steak 500 g",
    price: 400.00,
    count: 3,
    description: "Freshly cut, juicy beef rump steak",
  },
  {
    category_id: 3,
    image: "https://cdn.mafrservices.com/sys-master-root/h5d/hf9/17320076214302/1298_main.jpg?im=Resize=400",
    name: "Red grapes",
    price: 310.00,
    count: 4,
    description: "Red seedless grapes",
  },
  {
    category_id: 4,
    image: "https://cdn.mafrservices.com/sys-master-root/hfe/h1a/26675974537246/1533_main.jpg?im=Resize=400",
    name: "Potatoes",
    price: 110.00,
    count: 20,
    description: "White pack of content filled potatoes",
  },
  {
    category_id: 5,
    image: "https://cdn.mafrservices.com/sys-master-root/hf6/he1/17307028652062/276_main.jpg?im=Resize=400",
    name: "Highlands Tropical Drink 3L",
    price: 440.00,
    count: 2,
    description: "Concentrated Highlands tropical juice, dilute with water to drink.",
  },
  {
    category_id: 6,
    image: "https://cdn.mafrservices.com/sys-master-root/ha2/h41/16813496041502/8200_main.jpg?im=Resize=400",
    name: "Manji Salty Snack Biscuit 200g",
    price: 269.00,
    count: 2,
    description: "Assorted crackers",
  },
  {
    category_id: 3,
    image: "https://cdn.mafrservices.com/sys-master-root/hbb/h25/26833611391006/120686_main.jpg?im=Resize=400",
    name: "Oranges - 5 pieces",
    price: 200.00,
    count: 20,
    description: "Juicy oranges sourced from the best farms",
  },
  {
    category_id: 4,
    image: "https://cdn.mafrservices.com/sys-master-root/h23/h76/26402223554590/14765_main.jpg?im=Resize=400",
    name: "Red Onions - 6 pieces",
    price: 82.00,
    count: 12,
    description: "Big red onions pack",
  },
  {
    category_id: 2,
    image: "https://cdn.mafrservices.com/sys-master-root/ha2/h25/17290281091102/40514_main.jpg?im=Resize=400",
    name: "Farmers Choice Fresh Chicken Burger 400g",
    price: 355.00,
    count: 10,
    description: "Savoury chicken burger meat",
  },
  {
    category_id: 5,
    image: "https://cdn.mafrservices.com/pim-content/KEN/media/product/40578/1727949603/40578_main.jpg?im=Resize=400",
    name: "Red Bull Energy Drink 250ml",
    price: 210.00,
    count: 10,
    description: "250 ml energy drink from Red Bull",
  },
  {
    category_id: 1,
    image: "https://cdn.mafrservices.com/sys-master-root/h76/h66/27011242360862/15968_1.jpg?im=Resize=400",
    name: "Creambell Ice Cream Cookies & Cream 500ml",
    price: 400.00,
    count: 5,
    description: "Cookies and cream flavored Creambell ice cream",
  },
    {
        category_id: 6,
        image: "https://cdn.mafrservices.com/sys-master-root/hce/h8c/17384516157470/9001_main.jpg?im=Resize=400",
        name: "Butterfly Grains Popcorn Kernels 1kg",
        price: 270.00,
        count: 10,
        description: "Popcorn kernels",
    }
]

# Create products without duplicates
products_data.each do |product_data|
  Product.find_or_create_by(name: product_data[:name]) do |product|
    product.category_id = product_data[:category_id]
    product.image = product_data[:image]
    product.price = product_data[:price]
    product.count = product_data[:count]
    product.description = product_data[:description]
  end
end

puts "✅ Done seeding! Created/updated #{Category.count} categories and #{Product.count} products."