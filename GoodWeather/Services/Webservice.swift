//
//  Webservice.swift
//  GoodWeather
//
//  Created by Максим on 11.12.2022.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}


final class Webservice {
    
    func load<T>(resource: Resource<T>, completion: @escaping (T?) -> ()) {
        URLSession.shared.dataTask(with: resource.url) { data, responce, error in
            
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            } else {
                completion(nil)
            }
        }.resume()
    }
}
