//
//  SettingsViewModelTests.swift
//  GoodWeatherTests
//
//  Created by Максим on 02.02.2023.
//

import XCTest
@testable import GoodWeather

class SettingsViewModelTests: XCTestCase {
    
     private var settingsVM: SettingsViewModel!
    
    override func setUp() {
        super.setUp()
        
        self.settingsVM = SettingsViewModel()
    }

    func test_Default_Unit_Is_Celsius() {
        
        XCTAssertEqual(self.settingsVM.selectedUnit, .celsius)
    }
    
    func test_Correct_Name_For_Celsius() {
        XCTAssertEqual(self.settingsVM.selectedUnit.displayName, "Celcius")
    }
    
    func test_Should_Save_Unit(){
        self.settingsVM.selectedUnit = .fahrenheit
        let userDefaults = UserDefaults.standard
        XCTAssertNotNil(userDefaults.value(forKey: "unit"))
    }
    
    override func tearDown() {
        super.tearDown()
        
        let userDefaults = UserDefaults.standard
        userDefaults.removeObject(forKey: "unit")
    }

}
