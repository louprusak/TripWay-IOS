//
//  ContentView.swift
//  TripWay IOS
//
//  Created by Loup RUSAK on 19/01/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
            TabView{
                HomeView()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                MapView()
                    .tabItem{
                        Image(systemName: "map.fill")
                        Text("Map")
                    }
                LogsView()
                    .tabItem{
                        Image(systemName: "checklist.unchecked")
                        Text("Logs")
                    }
                AddView()
                    .tabItem{
                        Image(systemName: "plus.circle.fill")
                        Text("Add")
                    }
            }
        
        
        
        
    }
}

#Preview {
    MainView()
}
