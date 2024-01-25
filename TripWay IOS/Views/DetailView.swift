//
//  DetailView.swift
//  TripWay IOS
//
//  Created by Loup RUSAK on 24/01/2024.
//

import SwiftUI

struct DetailView: View {
    
    let imageName: String
    let cityName: String
    let cityDescription : String
    
    var body: some View {
        NavigationView{
            VStack{
//                Text(cityName).font(.largeTitle)
                ScrollView{
                    if(imageName != "noimage"){
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(30)
                            .padding()
                    }
                    Text(cityDescription)
                    Spacer()
                    Text(cityDescription)
                    Spacer()
                    Text(cityDescription)
                    Spacer()
                    Text(cityDescription)
                    Spacer()
                    Text(cityDescription)
                    Spacer()
                    Text(cityDescription)
                    Spacer()
                    Text(cityDescription)
                    Spacer()
                    Text(cityDescription)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .topLeading)
            
            
        }
        .navigationTitle(cityName)
    }
}

#Preview {
    DetailView(imageName: "sanfrancisco", cityName: "San Francisco", cityDescription: "Description de la ville. BLABLABLABLABLABBLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLA")
}
