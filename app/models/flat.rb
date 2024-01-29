class Flat < ApplicationRecord
  ATTRIBUTES_LABELS = {
    name: "Nom",
    address: "Adresse",
    description: "Description",
    price_per_night: "Prix par nuit",
    number_of_guests: "Nombre de personnes"
  }.freeze

  ATTRIBUTES_LABELS.each do |attr, label|
    validates attr, presence: { message: "#{label} ne peut pas être vide" }
  end
end
