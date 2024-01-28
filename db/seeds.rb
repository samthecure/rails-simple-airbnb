# Suppression des entrées
Flat.destroy_all
puts 'Supression des flats confirmé'

Flat.create!(
  name: 'Château',
  address: '12 rue du château',
  description: 'Forminadable château construit pour le baron de Lestag au 18e siècle.',
  price_per_night: 320,
  number_of_guests: 12
)

Flat.create!(
  name: 'Villa Luxe',
  address: '8 Avenue des Palmiers',
  description: 'Belle villa de luxe avec vue sur la mer, piscine privée et jardin exotique.',
  price_per_night: 500,
  number_of_guests: 8
)

Flat.create!(
  name: 'Chalet Montagnard',
  address: 'Les Alpages, Chalet 3',
  description: 'Chalet en bois au pied des montagnes, parfait pour les amoureux de la nature.',
  price_per_night: 250,
  number_of_guests: 6
)

Flat.create!(
  name: 'Appartement Cosy',
  address: '25 Rue de la Charme',
  description: 'Appartement confortable au cœur de la ville, idéal pour une escapade romantique.',
  price_per_night: 120,
  number_of_guests: 2
)

Flat.create!(
  name: 'Loft Industriel',
  address: '42 Rue des Artistes',
  description: 'Spacieux loft avec un style industriel moderne, situé dans un quartier artistique.',
  price_per_night: 180,
  number_of_guests: 4
)

if Flat.create!
puts 'La seed à bien été remplie'
else
puts 'Un problème est survenu lors de la création des entrées'
end
