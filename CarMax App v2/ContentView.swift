//
//  ContentView.swift
//  Carmax
//
//  Created by Michelle Thomas on 3/14/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var carmax : CarmaxApp
    
    @State private var vehicleType: VehicleType = .undetermined
    @State private var fuelType: FuelType = .undetermined
    
    @FocusState private var focus: Bool //whether or not the keyboard is present or not
    
    @State private var startGame = false
    
    
    var body: some View {
        NavigationStack{
            VStack{
                Picker("Select your vehicle type", selection: $vehicleType) {
                    Text("Select vehicle Type").tag(VehicleType.undetermined)
                    
                    Text("You Selected a Sedan").tag(VehicleType.sedan)
                    
                    Text("You Selected a SUV").tag(VehicleType.suv)
                    
                    Text("You Selected a Sports Car").tag(VehicleType.sports)
                    
                    Text("You Selected a Truck").tag(VehicleType.truck)

                } //picker ends
                .padding()
                
                .background(RoundedRectangle(cornerRadius: 10, style: .continuous))
                Text(vehicleType.description)
                    .padding()
            } //Vstack picker ends
                
                VStack{
                    Picker("Select the fuel type", selection: $fuelType) {
                        Text("Select fuel Type").tag(FuelType.undetermined)
                        
                        Text("You Selected a gas car").tag(FuelType.gas)
                        
                        Text("You Selected an electric car").tag(FuelType.electric)
                        
                        Text("You Selected a hybrid Car").tag(FuelType.hybrid)
                        

                    } //picker ends
                    .padding()
                
                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    Text(fuelType.description)
                        .padding()
                }
                
                
                .padding()
                .textFieldStyle(.roundedBorder)
                .focused($focus)
                .frame(width:350)
                
              
                Spacer()
         
            
            
            .padding()
            .navigationTitle("CarMax Car Selection")
            .fullScreenCover(isPresented: $startGame) {
                ContentView()
            }
        }//navigation stack ends
    }
}
    


#Preview {
    ContentView()
        .environmentObject(CarmaxApp())
    //RM revisit
    
}

