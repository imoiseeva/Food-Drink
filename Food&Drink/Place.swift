//
//  Place.swift
//  Food&Drink
//
//  Created by Александр on 22.02.2021.
//

import Foundation

struct Place {
    let type: String
    let name: String
    let workingHours: String
    let address: String
    let phone: String
}

extension Place {
    static func getInfo() -> [Place] {
        
        var places: [Place] = []
        let types = DataManager.shared.placeTypes
        let names = DataManager.shared.placeNames
        let workingHours = DataManager.shared.placeWorkingHours
        let adresses = DataManager.shared.placeAdresses
        let phones = DataManager.shared.placePhones

        for index in 0..<names.count {
            let place = Place(
                type: types[index],
                name: names[index],
                workingHours: workingHours[index],
                address: adresses[index],
                phone: phones[index]
                )
            places.append(place)
        }
        return places
    }
}


//let foodNames = PlaceDataManager.shared.foodNames
//        let foodPrices = PlaceDataManager.shared.foodPrices
//        let drinkNames = PlaceDataManager.shared.drinkNames
//        let drinkPrices = PlaceDataManager.shared.drinkPrices
//food:(
//    for index in 0..<foodNames.count {
//    let food = Food(name: foodNames[index], price: foodPrices[index])
//    food.append(food)
//    }
//),
//drink:(
//    for index in 0..<drinkNames.count {
//    let drink = Drink(name: drinkNames[index], price: drinkPrices[index])
//    drink.append(food)
//    }
//var food: [Food] = []


//struct Food {
//    let name: String
//    let price: String
//}
//
//struct Drink {
//    let name: String
//    let price: String
//}
