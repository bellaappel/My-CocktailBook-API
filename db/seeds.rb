# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cocktails = Cocktail.create([
    {
        name: "Manhattan",
        desc: "A classic all booze cocktail made primarily of whiskey. Originated as it's name suggests in Manhattan"
}])


liquors = Liquor.create([{name: "Rye Whiskey ", brand: "Bulleit", proof: 90 },{name: "Bourbon Whiskey", brand: "Bulleit", proof: 90},{name: "Tequila Respasado", brand: "Casamigos", proof: 80}])


recipes = Recipe.create([{title: "Bella's Perfect Manhattan", creator: "Bella", cocktail_id: 1, instructions: "Add 2 ounces rye whiskey, 1/2 ounce of sweet vermouth, 1/2 ounce dry vermouth and 2 dashes of angostura bitters to tumbler. Stir and strain into martini glass or pour over ice. Garnish with orange slice." }])