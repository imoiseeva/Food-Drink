//
//  PlaceDataManager.swift
//  Food&Drink
//
//  Created by Александр on 22.02.2021.
//

import Foundation

class PlaceDataManager {
    
    static let shared = PlaceDataManager()
    
    let placeTypes = ["Бар", "Кафе", "Ресторан"]
    
    let placeNames = ["Гриль бар 57", "TJI Fridays", "Своя компания"]
    
    let placeWorkingHours = ["с 11:00 до 00:00",
                        "с 10:00 до 23:00",
                        "с 12:00 до 23:00"]
    
    let placePhones = ["+7-903-086-23-57", "+7-343-287-12-02", "+7-343-298-00-44"]
    
    let placeAdresses = ["улица 8 марта, 104/1",
                    "улица 8 марта, 8д",
                    "улица 8 марта, 46"]
    
    let foodMenues = [["Шашлык", "Ребрышки", "Люля-кебаб", "Колбаски", "Эскалоп", "Куриные крылышки", "Жареный сыр", "Наггетсы", "Кордон блю"], ["Бургер", "Картошка", "Начос", "Коктейль", "Сыр", "Морожение", "Кофе", "Чизкейк", "Торт"], ["Паста", "Розитто", "Пицца", "Запеканка", "Лазанья", "Сыр дор блю", "Прошуто", "Торт", "Фруктовая нарезка"]]
    
    let drinksMenues = [["REMIX SERIES: MAUKI", "RUSSIAN IMPERIAL STOUT V.IV", "MACRO SERIES: SMOKY PEPPERS", "BRAVADA XMAS BOCK"], ["Ултимейт Электрик Лимонейд", "FRIDAY'STM Маргарита", "ПИНК ПАНК КОСМО МАРТИНИ"], ["Облепиховый морс", "Морс из лесных ягод", "Клюквенный морс"]
]
    
    private init() {}
}
