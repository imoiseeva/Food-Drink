//
//  PlaceDataManager.swift
//  Food&Drink
//
//  Created by Александр on 22.02.2021.
//

import Foundation

class PlaceDataManager {
    
    static let shared = PlaceDataManager()
    
    let types = ["Бар", "Кафе", "Ресторан"]
    
    let names = ["Гриль бар 57", "TJI Fridays", "Своя компания"]
    
    let workingHours = ["с 11:00 до 00:00",
                        "с 10:00 до 23:00",
                        "с 12:00 до 23:00"]
    
    let phones = ["+7-903-086-23-57", "+7-343-287-12-02", "+7-343-298-00-44"]
    
    let adresses = ["улица 8 марта, 104/1",
                    "улица 8 марта, 8д",
                    "улица 8 марта, 46"]
    
    private init() {}
}
