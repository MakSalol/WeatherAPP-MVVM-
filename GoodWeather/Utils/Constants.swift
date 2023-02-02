//
//  Constants.swift
//  GoodWeather
//
//  Created by Максим on 11.12.2022.
//

import Foundation

struct Urls {
    
    static func urlForWeatherByCity(city: String) -> URL {
        
        let userDefaults = UserDefaults.standard
        let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
        
        return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=e7f169893c5c5f0b9c77d5ca24512afe&units=\(unit)")!
        
    }
}
