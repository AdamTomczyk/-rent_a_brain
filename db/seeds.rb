# This file should contain all the record cre(ation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Brain.destroy_all
# create users

# User.create!()

# User.all iteration

  user_1 = User.create!(
  email: "adam@rentabrain.com",
  fullname: "Orange Dau",
  password: "adam123"
)

Brain.create!(
  name: "Johann Goethe",
  description: "Johann Goethe was a German polymath who lived in the 1800s and his estimated IQ score ranged from 210 to 225. founded the science of human chemistry and developed an early theory of evolution. To make him more of a Jack-of-all-trades, he is considered one of the greatest figures in Western literature. His poetic drama titled “Faust” was published in 1808 and it is still read and studied today.",
  address: "Empire State Building",
  iq: 217,
  eq: 60,
  price_per_minute: 277,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_1"
)

Brain.create!(
  name: "Leonardo Da Vinci",
  description: "Celebrated painter with works like the Mona Lisa and The Last Supper, Leonardo Da Vinci is one of the most celebrated geniuses ever to live. With an estimated IQ score ranging from 180 to 220, he was also able to create technological innovations like flying machines, armored vehicles, and adding machines.",
  address: "Checkpoint Charlie",
  iq: 200,
  eq: 70,
  price_per_minute: 270,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_2"
)

Brain.create!(
  name: "James Maxwell",
  description: "Having an estimated IQ score ranging from 190 to 205, James Maxwell was a mathematical physicist from Scotland. He’s best known for creating the classical theory of electromagnetic radiation. When Einstein was questioned if he had stood on the shoulders of Issac Newton to reach success, Einstein replied: “No, I stand on Maxwell’s shoulders.”",
  address: "Tour Eiffel",
  iq: 197,
  eq: 80,
  price_per_minute: 277,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_3"
)

Brain.create!(
  name: "Nicolaus Copernicus",
  description: "Copernicus was a mathematician and astronomer hailing from Poland. Boasting an estimated IQ score ranging from 160 to 200, he was the one who discovered that the sun was the center of our solar system and not the Earth.",
  iq: 180,
  eq: 90,
  price_per_minute: 270,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_4"
)

Brain.create!(
  name: "William Sidis",
  description: "William Sidis was an American child prodigy who eventually became the inspiration for the film Good Will Hunting. With IQ scores that ranged from 200 to 300, he was accepted to Harvard when he was 9-years-old. However, the ivy league university wouldn’t let him in due to his age. He attended Tufts University until Harvard finally let him attend when he was 11.",
  iq: 250,
  eq: 100,
  price_per_minute: 350,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_5"
)

Brain.create!(
  name: "Carl Gauss",
  description: "Carl Gauss was a child prodigy who went on to become one of the greatest German mathematicians of the 19th century. Having IQ scores that ranged from 250 to 300, he went on to contribute to the number theory fields like algebra, statistics, and analysis.",
  iq: 275,
  eq: 110,
  price_per_minute: 385,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_6"
)

Brain.create!(
  name: "Nikola Tesla",
  description: "Whenever you think of “Tesla” the luxury car brand may come to mind. However, Nikola Tesla was one of the smartest people ever to walk the planet. Born during a lightning storm in 1856, Tesla had an IQ range from 160 to 310. He’s known to invent the Tesla coil and alternating current machinery.",
  iq: 245,
  eq: 120,
  price_per_minute: 365,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_7"
)

Brain.create!(
  name: "Voltaire",
  description: "Francois Marie Arouet aka Voltaire had an estimated IQ range from 190 to 200. Born in 1694, he was known as one of France’s greatest writers and philosophers, known for his satire and his criticism of his country’s elite noblemen.",
  iq: 195,
  eq: 130,
  price_per_minute: 325,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_8"
)

Brain.create!(
  name: "Christopher Hirata",
  description: "Christopher Hirata, who has an IQ of 225, gained notable attention at the age of 14 when he became the youngest winner at the 1996 International Physics Olympiad. By the time he was 16, he was working with NASA investigating the colonization of Mars.",
  iq: 225,
  eq: 140,
  price_per_minute: 365,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_9"
)

Brain.create!(
  name: "Terence Tao",
  description: "Often called “the Mozart of Math”, Terence Tao was a child math prodigy who now teaches at UCLA. His IQ scores range from 211 to 230. He has become well known for his contributions to number theory and harmonic analysis. The Los Angeles Times reported that he was awarded $3 million in 2015 for winning the new Breakthrough Prize in Mathematics.",
  iq: 220,
  eq: 150,
  price_per_minute: 370,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_10"
)

Brain.create!(
  name: "Hypatia",
  description: "Hypatia of Alexandria was a philosopher and the greatest mathematician and astronomer in 4th century Greece. Her estimated IQ scores range from 170 to 210.",
  iq: 190,
  eq: 150,
  price_per_minute: 340,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_11"
)

Brain.create!(
  name: "Marie Curie",
  description: "Marie Curie is perhaps best known for her research in radioactivity which led to significant development of x-rays in surgery. Having an IQ score ranging from 180-200, she was the first woman the Nobel Prize and the first person to win it twice in both physics and chemistry.",
  iq: 190,
  eq: 160,
  price_per_minute: 350,
  rating: 3,
  user_id: user_1.id,
  icon_path: "brain_icons/Brain_icon_12"
)
