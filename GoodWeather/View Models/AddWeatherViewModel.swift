//
//  AddWeatherViewModel.swift
//  GoodWeather
//
//  Created by Максим on 11.12.2022.
//

import Foundation

class AddWeatherViewModel {
    
    func addWeather(for city: String, completion: @escaping (WeatherViewModel) -> Void) {
        
        let weatherURL = Urls.urlForWeatherByCity(city: city)
        
        let weatherResource = Resource<WeatherResponce>(url: weatherURL) { data in
            let weatherResponce = try? JSONDecoder().decode(WeatherResponce.self, from: data)
            
            return weatherResponce
        }
        
        Webservice().load(resource: weatherResource) { result in
            
            if let weatherResource = result {
                let vm = WeatherViewModel(weather: weatherResource)
                completion(vm)
            }
        }
        
    }
}
