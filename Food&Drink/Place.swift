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
        
        let types = PlaceDataManager.shared.types
        let names = PlaceDataManager.shared.names
        let workingHours = PlaceDataManager.shared.workingHours
        let adresses = PlaceDataManager.shared.adresses
        let phones = PlaceDataManager.shared.phones
        
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
