//
//  Place.swift
//  Food&Drink
//
//  Created by Александр on 22.02.2021.
//

import Foundation

struct Food {
    let name: String
    let price: String
}

struct Drink {
    let name: String
    let price: String
}

struct Place {
    let type: String
    let name: String
    let workingHours: String
    let address: String
    let phone: String
    let food: [Food]
    let drink: [Drink]
    
}

extension Place {
    static func getInfo() -> [Place] {
        
        var places: [Place] = []
        var food: [Food] = []
        
        let types = PlaceDataManager.shared.types
        let names = PlaceDataManager.shared.names
        let workingHours = PlaceDataManager.shared.workingHours
        let adresses = PlaceDataManager.shared.adresses
        let phones = PlaceDataManager.shared.phones
        let foodNames = PlaceDataManager.shared.foodNames
        let foodPrices = PlaceDataManager.shared.foodPrices
        let drinkNames = PlaceDataManager.shared.drinkNames
        let drinkPrices = PlaceDataManager.shared.drinkPrices
        
        for index in 0..<names.count {
            let place = Place(
                type: types[index],
                name: names[index],
                workingHours: workingHours[index],
                address: adresses[index],
                phone: phones[index],
                food:(
                    for index in 0..<foodNames.count {
                    let food = Food(name: foodNames[index], price: foodPrices[index])
                    food.append(food)
                    }
                ),
                drink:(
                    for index in 0..<drinkNames.count {
                    let drink = Drink(name: drinkNames[index], price: drinkPrices[index])
                    drink.append(food)
                    }
                )
                
            )
            places.append(place)
        }
        return places
    }
}
