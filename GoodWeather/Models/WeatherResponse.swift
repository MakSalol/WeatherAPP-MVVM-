//
//  WeatherResponce.swift
//  GoodWeather
//
//  Created by Максим on 11.12.2022.
//

import Foundation

struct WeatherResponce: Decodable  {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
