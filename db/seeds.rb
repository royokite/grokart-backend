puts "🌱 Seeding..."

Category.create([
    {
        category_name: "dairy",
        description: "Food products made from milk. Such as cheese, cream, butter, ice cream and yogurt"
    },
    {
        category_name: "meat",
        description: "Flesh or other edible parts of animals used for food"
    },
    {
        category_name: "fruits",
        description: "Fruits are the fleshy or dry ripened ovaries of flowering plants, enclosing the seeds."
    },
    {
        category_name: "vegetables",
        description: "Vegetables are the edible portions of plants"
    },
    {
        category_name: "drinks",
        description: "Liquids intended for human consumption"
    },
    {
        category_name: "pantry",
        description: "Baked goods, eggs and snacks"
    },
])

Product.create([
    {
        category_id: 1,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVS5749_2.jpg",
        name: "Brookside Fresh Milk 500 ml",
        price: 65.00,
        count: 10,
        description: "Boxed fresh milk 500 ml from brookside dairy farms",
    },
    {
        category_id: 2,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSO034x.jpg",
        name: "Goat Ribs 500 g",
        price: 200.00,
        count: 5,
        description: "Freshly cut goat ribs",
    },
    {
        category_id: 3,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSS00766.jpeg",
        name: "Pineapple",
        price: 99.00,
        count: 9,
        description: "An incredibly delicious, healthy tropical fruit",
    },
    {
        category_id: 4,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSL1612.jpg",
        name: "Fresh Tomatoes 1 kg ",
        price: 80.00,
        count: 20,
        description: "Fresh green house grown tomatoes",
    },
    {
        category_id: 5,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/4015.jpg",
        name: "Monster energy drink 500ml",
        price: 200.00,
        count: 10,
        description: "Original 500ml monster energy drink",
    },
    {
        category_id: 6,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSL942a.png",
        name: "Festive Milky White Bread 800g ",
        price: 120.00,
        count: 6,
        description: "White milky bread from festive",
    },
    {
        category_id: 3,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSL1195xy.jpg",
        name: "Bananas",
        price: 80.00,
        count: 5,
        description: "Delicious bunch of fresh bananas",
    },
    {
        category_id: 4,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSO006.jpg",
        name: "Sukuma Wiki",
        price: 25.00,
        count: 12,
        description: "Fresh and leafy sukuma wiki bunch",
    },
    {
        category_id: 5,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/3899.jpg",
        name: "Fanta Blackcurrant 2L",
        price: 180.00,
        count: 5,
        description: "Fanta Blackcurrant Pet Bottle 2 L, Coca-Cola product",
    },
    {
        category_id: 1,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/5996.jpg",
        name: "Ilara Thick & Creamy Yoghurt Strawberry 250ml ",
        price: 65.00,
        count: 3,
        description: "Creamy strawberry flavored 250ml yoghurt",
    },
    {
        category_id: 2,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSS02093.jpg",
        name: "Tilapia Whole",
        price: 520.00,
        count: 3,
        description: "Whole fully grown tilapia fish",
    },
    {
        category_id: 6,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/5719y.jpg",
        name: "Isinya Eggs 12 Pieces ",
        price: 243.00,
        count: 9,
        description: "A tray of a dozen eggs from Isinya",
    },
    {
        category_id: 2,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSO039x.JPG",
        name: "Chicken Drumstick 500 g",
        price: 305.00,
        count: 8,
        description: "A pack of plump chicken drumsticks",
    },
    {
        category_id: 3,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSL972x.jpg",
        name: "Assorted Apples - 4 pieces",
        price: 175.00,
        count: 16,
        description: "Assorted red and green apples, freshly harvested",
    },
    {
        category_id: 1,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSO2567.jpg",
        name: "Lactasoy Soy Milk Original Sweetened 500ml",
        price: 175.00,
        count: 2,
        description: "Sweetened soy based 500ml milk product",
    },
    {
        category_id: 5,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSS03413.jpg",
        name: "Gofrut Multifruit Juice 1L",
        price: 120.00,
        count: 5,
        description: "Ready to drink Gofrut mixed fruit juice 1L",
    },
    {
        category_id: 4,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSL1611.jpeg",
        name: "Carrots 1 kg",
        price: 145.00,
        count: 17,
        description: "Fresh and tasty carrots",
    },
    {
        category_id: 6,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSS02135.png",
        name: "Elbbin Multigrain Snacks Chocolate 50g",
        price: 70.00,
        count: 7,
        description: "Elbbin and nibble milk chocolate multigrain snacks are extremely tasty",
    },
    {
        category_id: 1,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVS00022.jpg",
        name: "Sirimon Cheddar Cheese 250g",
        price: 473.00,
        count: 4,
        description: "Natural, relatively hard, off-white, and sharp-tasting cheddar cheese",
    },
    {
        category_id: 2,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSL1051x.png",
        name: "Beef Rump Steak 500 g",
        price: 400.00,
        count: 3,
        description: "Freshly cut, juicy beef rump steak",
    },
    {
        category_id: 3,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSL1007yz.jpg",
        name: "Red grapes",
        price: 310.00,
        count: 4,
        description: "Red seedless grapes",
    },
    {
        category_id: 4,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSL1223.jpg",
        name: "Potatoes",
        price: 110.00,
        count: 20,
        description: "White pack of content filled potatoes",
    },
    {
        category_id: 5,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/4083x.png",
        name: "Highlands Tropical Drink 3L ",
        price: 440.00,
        count: 2,
        description: "Concentrated Highlands tropical juice, dilute with water to drink.",
    },
    {
        category_id: 6,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/4924.png",
        name: "Manji Snack Moments 300g ",
        price: 269.00,
        count: 2,
        description: "Assorted crackers",
    },
    {
        category_id: 3,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSL992.jpg",
        name: "Oranges - 5 pieces",
        price: 200.00,
        count: 20,
        description: "Juicy oranges sourced from the best farms",
    },
    {
        category_id: 4,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/NVSL1208z.jfif",
        name: "Red Onions - 6 pieces",
        price: 82.00,
        count: 12,
        description: "Big red onions pack",
    },
    {
        category_id: 2,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/6072.jpg",
        name: "Farmers Choice Fresh Beef Burger 400g",
        price: 355.00,
        count: 10,
        description: "Savoury beef burger meat",
    },
    {
        category_id: 5,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/4017.jpg",
        name: "Red Bull Energy Drink 250ml",
        price: 210.00,
        count: 10,
        description: "250 ml energy drink from Red Bull",
    },
    {
        category_id: 1,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/6296.jpg",
        name: "Creambell Ice Cream Cookies & Cream 500ml",
        price: 400.00,
        count: 5,
        description: "Cookies and cream flavored creambell ice cream",
    },
    {
        category_id: 6,
        image: "https://s3-eu-west-1.amazonaws.com/naivas-live/productImage/5317z.jpg",
        name: "Butterfly Grains Popcorn Kernels 1kg",
        price: 270.00,
        count: 10,
        description: "Popcorn kernels",
    }
])

puts "✅ Done seeding!"