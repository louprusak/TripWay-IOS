//
//  HomeTripTile.swift
//  TripWay IOS
//
//  Created by Loup RUSAK on 19/01/2024.
//

import Foundation
import SwiftUI

/*
 Tuile affichage de la ville page principale
 */
struct HomeTripTile: View{
    
    let imageName: String
    let cityName: String
    let cityDescription: String
    
    @State private var showingSheet = false
    
    var body: some View {
        Button(action: {
            showingSheet.toggle()
        }){
            ZStack{
                
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .padding()
                
                Text(cityName)
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding(30)
                    .shadow(color: .black, radius: 10)
            }
        }
        .sheet(isPresented: $showingSheet){
            DetailSheet(imageName: imageName, cityName: cityName, cityDescription: cityDescription)
        }
    }
}

#Preview {
    HomeTripTile(imageName: "noimage", cityName: "Ville", cityDescription: "Description de la ville")
}
