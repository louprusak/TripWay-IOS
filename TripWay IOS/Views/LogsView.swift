//
//  LogsView.swift
//  TripWay IOS Playground
//
//  Created by Loup RUSAK on 09/06/2023.
//

import SwiftUI


struct LogsView: View {
    
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationView{
            List(cities){ city in
                
                NavigationLink(destination: DetailView(imageName: city.imageName, cityName: city.name, cityDescription: city.description)){
                    
                    VStack(alignment: .leading){
                        HStack{
                            Image(city.country).resizable().frame(width: 30,height: 20)
                            //Text("["+city.country+"] ")
                            Text(city.name)
                        }
                        
                    }
                }
                
            }
            .navigationTitle("Logs")
//            .toolbar{EditButton()}
        }
//        if(multiSelection.count > 0) {Text("\(multiSelection.count) selections")}
        
    }
}

#Preview {
    LogsView()
}

