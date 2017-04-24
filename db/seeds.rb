User.delete_all
Product.delete_all

user1 = User.create!(
  first_name: "Angela",
  last_name: "Merkel",
  email: "angela@merkel.com",
  password: "abc123"
)
user2 = User.create!(
  first_name: "Bob",
  last_name: "de Jong",
  email: "bob@dejong.com",
  password: "abc123"
)
user3 = User.create!(
  first_name: "Sarah",
  last_name: "de Rooij",
  email: "sarah@derooij.com",
  password: "abc123"
)


product1 = Product.create(
  title: "Rok Day Birger & Mikelsen",
  start_price: 25,
  image: "https://cdna.lystit.com/photos/1298-2015/06/14/jimmy-choo-grey-agnes-pumps-gray-product-1-055664419-normal.jpeg",
  condition: "Kleine gebruikssporen",
  description: "Gedragen maar kan zeer zeker nog mooie rondes mee",
  size: "M",
  user_id: user1
)
product2 = Product.create(
  title: "Jimmy Choo Pumps",
  start_price: 575,
  image: "https://cdn.rebelle.com/20/2014-07-0820140708-12988-1qh8w57.jpg?width=420&height=420",
  condition: "Nieuw",
  description: "Prachtige nieuw in doos Jimmy Choo Aude Cubed Nitro leather pump in zilver kleur. Gekocht voor een gelegenheid maar niet gebruikt daarvoor. Een keer gepast en binnen even op gelopen maar daarna altijd in de kast blijven staan. Prachtige pump klassiek en tijdloos en zeer edgy en trendy nu voor een geweldige prijs.",
  size: "39",
  user_id: user1
)
product3 = Product.create(
  title: "Bellerose Jas",
  start_price: 65,
  image: "https://www.orangebag.nl/cache/bellerose-jassen.303644/bellerose-jassen-1728-2304.jpg",
  condition: "Kleine gebruikssporen",
  description: "Lekker Bellrose jasje, met dunne warme voering.",
  size: "S",
  user_id: user2
)
product4 = Product.create(
  title: "Swarovski Zonnebril",
  start_price: 550,
  image: "https://www.perssupport.nl/uploads/cache/press_news_item_og/uploads/press-news-item/original/3a7effe7-092f-11e1-9432-8b7e440500ec.jpg",
  condition: "Zo goed als nieuw",
  description: "collectors item zonnebril van Swarovski. beperkte oplage.Deze zonnebril heeft rond de 1200 euro gekost. De zijkant zitten de mooie Swarovski stenen",
  size: "One size fits all",
  user_id: user2
)
product5 = Product.create(
  title: "Coach Schoudertas",
  start_price: 785,
  image: "https://cdn.rebelle.com/20/2014-07-0820140708-12988-1qh8w57.jpg?width=420&height=420",
  condition: "Binnenvoering heeft kleine rafel",
  description: "Royale tas van Coach. Met mooie details en 3 ruime vakken, dubbele handgrepen en of verwijderbare schouderriempjes. Het is gemaakt van kiezelleer met een suede interieur. Afm 26x31x14cm.",
  size: "30 bij 40 cm",
  user_id: user1
)
