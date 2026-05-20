Restaurant.destroy_all

restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "01 53 43 43 40", category: "french" },
  { name: "Sushi Samba", address: "15 Rue de la Paix, 75002 Paris", phone_number: "01 42 61 05 09", category: "japanese" },
  { name: "Osteria Ferrara", address: "7 Rue du Dahomey, 75011 Paris", phone_number: "01 43 71 67 69", category: "italian" },
  { name: "Mirama", address: "17 Rue Saint-Jacques, 75005 Paris", phone_number: "01 43 54 71 77", category: "chinese" },
  { name: "Le Chalet de la Forêt", address: "43 Drève de Lorraine, 1180 Bruxelles", phone_number: "+32 2 374 54 16", category: "belgian" },
  { name: "Le Grand Véfour", address: "17 Rue de Beaujolais, 75001 Paris", phone_number: "01 42 96 56 27", category: "french" }
]

restaurants.each do |attrs|
  r = Restaurant.create!(attrs)
  puts "Created: #{r.name}"
end
