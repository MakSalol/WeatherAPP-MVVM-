//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Максим on 11.12.2022.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
 }
