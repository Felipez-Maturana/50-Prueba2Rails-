# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.delete_all
User.delete_all

c1 = Category.create!(name: "Neumaticos")
c2 = Category.create!(name: "Limpieza")
c3 = Category.create!(name: "Accesorios de Auto")

u1 = User.create!(name: "felipe maturana", email: "f@f.cl")
u2 = User.create!(name: "juan de pablo", email: "j@j.cl")

i1 = Item.create(name: "Neumatico Auto",serie: 123, size: 20, description: "Neumaticos ABS", category_id: c1.id)
i2 = Item.create!(name: "Neumatico Camión",serie: 124, size: 35, description: "Neumaticos con doble freno super hiper mega buenos", category_id: c1.id, user_id: u1.id)
i3 = Item.create!(name: "Neumatico de Nave Espacial",serie: 125, size: 200, description: "Neumaticos espaciales cuanticos", category_id: c1.id, user_id: u1.id)

i4 = Item.create(name: "Kit Limpieza",serie: 234, size: 5, description: "Kit de limpieza intergaláctico", category_id: c2.id, user_id: u1.id)
i5 = Item.create(name: "Pino verde",serie: 234, size: 3, description: "Este artículo aromatiza tu auto y aumenta en 40 caballos de fuerza la potencia de tu vehículo", category_id: c2.id, user_id: u1.id)
i6 = Item.create(name: "Jabón Popeye",serie: 236, size: 1, description: "El MÁS mejor", category_id: c2.id, user_id: u2.id)


i7 = Item.create(name: "Perro con cabeza móvil",serie: 333, size: 1, description: "Perro que dice que sí a todo", category_id: c3.id, user_id: u2.id)
i7 = Item.create(name: "Gato amenazador",serie: 334, size: 1, description: "Si no me compras se muere un gatito en el mundo", category_id: c3.id, user_id: u2.id)
i7 = Item.create(name: "Bola 8",serie: 335, size: 1, description: "Bola de la suerte, si me compras pasarás todos tus ramos", category_id: c3.id)


