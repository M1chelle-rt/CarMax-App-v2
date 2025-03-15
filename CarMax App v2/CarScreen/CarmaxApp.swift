//
//  CarmaxApp.swift
//  Carmax
//
//  Created by Michelle Thomas on 3/14/25.
//

import SwiftUI

@MainActor

class CarmaxApp: ObservableObject {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    @Published var vehicleType = VehicleType.sedan
    
    struct Vehicle {
        let make: String
        let model: String
        let type: String  // "Sedan", "SUV", "Sports"
        let horsepower: Int
        let mpg: Double
        let price: Double
    }
    
    struct UserPreference {
        let prefersSportsCar: Bool
        let caresAboutMPG: Bool
        let budgetSensitivity: Double  // 0.0 (doesn’t care) to 1.0 (highly budget-conscious)
    }
    
    func vehicleSelection(vehicleType: VehicleType){
        switch vehicleType {
        case .sedan:
            self.vehicleType = .sedan
            
        case .suv:
            self.vehicleType = .suv
            
        case .sports:
            self.vehicleType = .sports
            
        case .truck:
            self.vehicleType = .truck
            
        case .undetermined:
            self.vehicleType = .undetermined
            break
        }
       
        
    }
}
