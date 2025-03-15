//
//  VehicleType.swift
//  Carmax
//
//  Created by Michelle Thomas on 3/14/25.
//

import SwiftUI

 enum VehicleType {
        case sedan, suv, sports, truck, undetermined
        var description : String {
            switch self {
            case .sedan:
                return "Sedan"
            case .suv:
                return "SUV"
            case .sports:
                return "Sports"
            case .truck:
                return "truck"
            case .undetermined:
                return ""
            }
        }

    }

    // Enum for fuel types
    enum FuelType {
        case gas, electric, hybrid, undetermined
        var description : String {
            switch self {
            case .gas:
                return "Gas"
            case .electric:
                return "Electric"
            case .hybrid:
                return "Hybrid"
            case .undetermined:
                return ""
            }
        }
    }
