# Suppression des entrées
Flat.destroy_all
puts 'Suppression des flats confirmée'

flat_attributes = [
  {
    name: 'Château',
    address: '12 rue du château',
    description: 'Formidable château construit pour le baron de Lestag au 18e siècle.',
    price_per_night: 320,
    number_of_guests: 12,
    picture_url: 'https://images.unsplash.com/photo-1571504211935-1c936b327411?q=80&w=2512&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  },
  {
    name: 'Villa Luxe',
    address: '8 Avenue des Palmiers',
    description: 'Belle villa de luxe avec vue sur la mer, piscine privée et jardin exotique.',
    price_per_night: 500,
    number_of_guests: 8,
    picture_url: 'https://images.unsplash.com/photo-1613490493576-7fde63acd811?q=80&w=2971&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  },
  {
    name: 'Chalet Montagnard',
    address: 'Les Alpages, Chalet 3',
    description: 'Chalet en bois au pied des montagnes, parfait pour les amoureux de la nature.',
    price_per_night: 250,
    number_of_guests: 6,
    picture_url: 'https://images.pexels.com/photos/1004682/pexels-photo-1004682.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
  },
  {
    name: 'Appartement Cosy',
    address: '25 Rue de la Charme',
    description: 'Appartement confortable au cœur de la ville, idéal pour une escapade romantique.',
    price_per_night: 120,
    number_of_guests: 2,
    picture_url: 'https://images.pexels.com/photos/9143446/pexels-photo-9143446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
  },
  {
    name: 'Loft Industriel',
    address: '42 Rue des Artistes',
    description: 'Spacieux loft avec un style industriel moderne, situé dans un quartier artistique.',
    price_per_night: 180,
    number_of_guests: 4,
    picture_url: 'https://images.pexels.com/photos/6045083/pexels-photo-6045083.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
  }
]
10.times do
  shuffled_attributes = flat_attributes.shuffle

  shuffled_attributes.each do |attributes|
    if Flat.create(attributes)
      puts 'La seed a bien été remplie'
    else
      puts 'Un problème est survenu lors de la création des entrées'
    end
  end
end
