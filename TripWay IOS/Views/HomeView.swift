//
//  HomeView.swift
//  TripWay IOS Playground
//
//  Created by Loup RUSAK on 09/06/2023.
//

import SwiftUI

/*
 Vue principale de la page principale
 */
struct HomeView: View {
    
    @State var text = ""
    
    
    var body: some View {
            
        VStack{
            HStack {
                Image(systemName: "airplane")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("TripWay")
                    .bold()
                    .fontWeight(.bold)
                    .padding()
            }
            ScrollView{
                
                VStack{
                    
//                    List(cities){ city in
//                        HomeTripFigure(imageName: city.imageName, text: city.name)
//                    }
                    
                    ForEach(cities){city in
                        HomeTripTile(imageName: city.imageName, cityName: city.name, cityDescription: city.description)
                    }
//                     
//                    HomeTripFigure(imageName: "sanfrancisco", text: "San Francisco")
//                    HomeTripFigure(imageName: "paris", text: "Paris")
//                    HomeTripFigure(imageName: "newyork", text: "New York")
                    
                    
                }
                    
            }
            
        }
        
    }
}

#Preview {
    HomeView()
}
