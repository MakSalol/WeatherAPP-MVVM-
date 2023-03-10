//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by Максим on 11.12.2022.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.city
        self.temperatureLabel.text = "\(vm.temperature.formatAsDegree())°"
    }
}
