//
//  Drinks.swift
//  Food&Drink
//
//  Created by Irina Moiseeva on 24.02.2021.
//


struct Drinks {
    let drink: [String]
    let cost: [String]
}

extension Drinks {
    static func getDrink() -> [Drinks] {
        [
            Drinks(drink: ["REMIX SERIES: MAUKI", "RUSSIAN IMPERIAL STOUT V.IV", "MACRO SERIES: SMOKY PEPPERS", "BRAVADA XMAS BOCK"], cost: ["Цена: 500р" ,"Цена: 180р", "Цена: 450р", "Цена 300р"]),
            Drinks(drink: ["Ултимейт Электрик Лимонейд", "FRIDAY'STM Маргарита", "ПИНК ПАНК КОСМО МАРТИНИ"], cost: ["Цена: 500р" ,"Цена: 180р", "Цена: 450р", "Цена 300р"]),
            Drinks(drink: ["Облепиховый морс", "Морс из лесных ягод", "Клюквенный морс"], cost: ["Цена: 500р" ,"Цена: 170р", "Цена: 460р", "Цена 300р"])
        
        ]
    }
}

