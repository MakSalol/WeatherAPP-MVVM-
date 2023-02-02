//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Максим on 01.02.2023.
//

import Foundation


extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0f", self)
    }
}
