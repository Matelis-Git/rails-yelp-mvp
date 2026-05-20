# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

Restaurant.create(name: "Le Comptoir", address: "9 Carrefour de l'Odéon, Paris", phone_number: "0146338560", category: "french")
Restaurant.create(name: "Breizh Café", address: "109 Rue Vieille du Temple, Paris", phone_number: "0142723477", category: "spanish")
Restaurant.create(name: "Higuma", address: "32 Rue Saint-Anne, Paris", phone_number: "0147038038", category: "japanese")
Restaurant.create(name: "Lao Siam", address: "49 Rue de Belleville, Paris", phone_number: "0140400868", category: "chinese")
Restaurant.create(name: "Pulcinella", address: "11 Rue Gozlin, Paris", phone_number: "0143543420", category: "italian")

puts "#{Restaurant.count} restaurants created!"
