User.delete_all
Product.delete_all
ProductNegotiation.delete_all
SingleBid.delete_all


user1 = User.create!(
  first_name: "Evy",
  last_name: "Mennens",
  email: "evytnc@gmail.com",
  password: "@bcd1234"
)
user2 = User.create!(
  first_name: "Sjeel",
  last_name: "Korenromp",
  email: "sjeeltnc@gmail.com",
  password: "@bcd1234"
)
user3 = User.create!(
  first_name: "ILJA",
  last_name: "Visser",
  email: "iljatnc@gmail.com",
  password: "@bcd1234"
)


product1 = Product.create(
  title: "GIVENCHY",
  product_type: "Enkellaarzen",
  original_price: 1315,
  start_price: 900,
  image: "https://thenextcloset.com/system/uploads/asset/file/426914/large_image.jpg",
  condition: "Kleine gebruikssporen",
  description: "Givenchy 'TRIA' boots. Maar 3x gedragen. Aangekocht februari 2016 In de Bijenkorf in Amsterdam. Originele prijs €1315,00.\nMateriaal: Suede\nKleur: Beige",
  size: "38",
  user_id: user1.id,
  accept_offers: true
)
product2 = Product.create(
  title: "PATRIZIA PEPE",
  product_type: "Poncho",
  original_price: 240,
  start_price: 115,
  image: "https://thenextcloset.com/system/uploads/asset/file/423921/large_18-4__76_.JPG",
  condition: "Topconditie",
  description: "Grijs/Taupe kleur Poncho van Patrizia Pepe. Maat 1, denk dat dit overeenkomt met maat 36, maar ook geschikt voor een maat groter of kleiner. Kan zo gedragen worden of bijvoorbeeld over een leren jasje. Met grote kol.\nGebruikte materialen: Acryl, Alpaca, wol.",
  size: "36",
  user_id: user2.id,
  accept_offers: true
)
product3 = Product.create(
  title: "ILJA VISSER",
  product_type: "Top",
  original_price: 199,
  start_price: 55,
  image: "https://thenextcloset.com/system/uploads/asset/file/440561/large_25-4__16_.jpg",
  condition: "Nieuw",
  description: "Prachtige exclusieve witte nieuwe blouse van de modeontwerpster ILJA VISSER\nMaat 36\nZijde\nNieuw met kaartje 199",
  size: "36",
  user_id: user1.id,
  accept_offers: true
)
product4 = Product.create(
  title: "STILLS",
  product_type: "Jurk",
  original_price: 299,
  start_price: 79,
  image: "https://thenextcloset.com/system/uploads/asset/file/440476/large_25-4__53_.jpg",
  condition: "Nieuw",
  description: "Prachtige mooie nieuwe jurk van STILLS in maat 36\nDonker mais geel afgezet met een bruin randje\nGevoerd\nNieuw met kaartje 299",
  size: "36",
  user_id: user1.id,
  accept_offers: true
)
product5 = Product.create(
  title: "PRADA",
  product_type: "Shopper",
  original_price: 900,
  start_price: 450,
  image: "https://thenextcloset.com/system/uploads/asset/file/439700/large_25-4__23_.jpg",
  condition: "1x gedragen",
  description: "Prada shopper van zeer soepel maar stevig leer. Nieuw.\nMateriaal: Leer\nKleur: Blauw ",
  size: "",
  user_id: user2.id,
  accept_offers: true
)
product6 = Product.create(
  title: "CHRISTIAN LOUBOUTIN",
  product_type: "Enkellaarzen",
  original_price: 895,
  start_price: 295,
  image: "https://thenextcloset.com/system/uploads/asset/file/440169/large_25-4__63_.JPG",
  condition: "Nieuw",
  description: "Christian Louboutin enkellaarsjes 'Fastwist 140' in bruin suede. Met 140mm behoorlijk hoog, maar er zit ruim 2 cm platform in waardoor ze toch minder hoog voelen.\nVallen naar maat (zijn mij met mijn maat 39 dus helaas te groot).\nNieuw en ongedragen inclusief originele doos.\nMateriaal: Suede \nKleur: Bruin ",
  size: "40",
  user_id: user3.id,
  accept_offers: true
)
product7 = Product.create(
  title: "ASH",
  product_type: "Sneakers",
  original_price: 175,
  start_price: 50,
  image: "https://thenextcloset.com/system/uploads/asset/file/429902/large_20-4__168_.JPG",
  condition: "",
  description: "Stoere, trendy sneakers in kaki camouflage print van het hippe merk ASH. Ze lopen heerlijk en zijn helemaal hot. De witte neus is opzettelijk enigszins oud gemaakt, lijkt langs de randen wat 'groezelig', maar zo zijn ze gemaakt, zaten zo in de doos, ze zijn slechts een paar keer gedragen en zien er, afgezien van wat gebruikssporen op de zolen, perfect uit. Een aanrader. De maat is 37. Neem een kijkje in mijn boutique, bijna dagelijks nieuwe items van top merken.",
  size: "37",
  user_id: user1.id,
  accept_offers: true
)
product8 = Product.create(
  title: "CITIZENS OF HUMANITY",
  product_type: "Jeans",
  original_price: 225,
  start_price: 40,
  image: "https://thenextcloset.com/system/uploads/asset/file/440754/large_25-4__17_.jpg",
  condition: "Topconditie",
  description: "Prachtige jeans van Citizens of Humanity, Avedon. Maat 28. Met 2% elastan voor de perfecte pasvorm.\nMateriaal: Denim\nKleur: Blauw ",
  size: "28",
  user_id: user3.id,
  accept_offers: false
)
product9 = Product.create(
  title: "LOUIS VUITTON",
  product_type: "Enkellaarzen",
  original_price: 1095,
  start_price: 185,
  image: "https://thenextcloset.com/system/uploads/asset/file/433685/large_2041608-1_1_1_.jpg",
  condition: "Topconditie",
  description: "Mooie zomerlaarsjes in leder van Louis Vuitton\nHakhoogte : 12 cm \nHoogte van de laars : 30 cm \nHak in hout en sluiting met rits aan de achterzijde\nMateriaal: Leer \nKleur: Beige ",
  size: "39",
  user_id: user1.id,
  accept_offers: false
)
product10 = Product.create(
  title: "TWIN-SET",
  product_type: "Top",
  original_price: 215,
  start_price: 40,
  image: "https://thenextcloset.com/system/uploads/asset/file/434375/large_P1060097.JPG",
  condition: "",
  description: "Mooie gehaakte tuniek van Twin Set met langere ondertop met verstelbare bandjes. Een paar maal gedragen.\nMateriaal: Katoen\nKleur: Beige ",
  size: "36",
  user_id: user2.id,
  accept_offers: false
)
product11 = Product.create(
  title: "IRO",
  product_type: "Jas",
  original_price: 540,
  start_price: 150,
  image: "https://thenextcloset.com/system/uploads/asset/file/439660/large_25-4__105_.JPG",
  condition: "Topconditie",
  description: "IRO's Hoover Jacket. Black jacket with leather sleeves | Assymetric zipper flap front | Zip pockets | Leather trim at hems. 52% Cotton | 44% Linen | 3% Polyamide, 1% Elastane. Dry Clean. Mt 3\nMateriaal: Katoen \nKleur: Zwart ",
  size: "38",
  user_id: user3.id,
  accept_offers: false
)
product12 = Product.create(
  title: "NIKE",
  product_type: "Sneakers",
  original_price: 100,
  start_price: 40,
  image: "https://thenextcloset.com/system/uploads/asset/file/411478/large_20170405_120051.jpg",
  condition: "Topconditie",
  description: "Nike internationalist schoenen in hele goede conditie, slechts paar keer gedragen. De schoenen zijn deels van suede, deels mesh-achtig materiaal (want het zijn sneakers). Maat valt echt als 36,5 (US 6; UK 3.,5; EUR 36,5; cm 23). Inclusief doos.\nMateriaal: Suede \nKleur: Blauw",
  size: "36,5",
  user_id: user1.id,
  accept_offers: false
)
product13 = Product.create(
  title: "ARMANI",
  product_type: "Jeans",
  original_price: 169,
  start_price: 45,
  image: "https://thenextcloset.com/system/uploads/asset/file/363152/large_FullSizeRender-27.jpg",
  condition: "Topconditie",
  description: "Mooie Armani jeans, laag model. Weinig gedragen. Te klein gekocht.\nMateriaal: Katoen \nKleur: Blauw ",
  size: "36",
  user_id: user1.id,
  accept_offers: false
)


# product_negotations
product_negotiation1 = ProductNegotiation.create!(
  single_bids: [],
  active: true,
  product_id: product1.id,
  user_id: user2.id
)
product_negotiation2 = ProductNegotiation.create!(
  single_bids: [],
  active: true,
  product_id: product2.id,
  user_id: user1.id
)
product_negotiation3 = ProductNegotiation.create!(
  single_bids: [],
  active: true,
  product_id: product3.id,
  user_id: user1.id
)


# single bids
single_bid1 = SingleBid.create!(
  product_negotiation_id: product_negotiation1.id,
  price: 22,
  counter_offer: false,
  accepted: false
)
single_bid2 = SingleBid.create!(
  product_negotiation_id: product_negotiation1.id,
  price: 24,
  counter_offer: true,
  accepted: false
)
single_bid3 = SingleBid.create!(
  product_negotiation_id: product_negotiation1.id,
  price: 23,
  counter_offer: false,
  accepted: false
)
single_bid4 = SingleBid.create!(
  product_negotiation_id: product_negotiation2.id,
  price: 50,
  counter_offer: false,
  accepted: false
)
