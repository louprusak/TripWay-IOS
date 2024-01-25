//
//  city.swift
//  TripWay IOS Playground
//
//  Created by Loup RUSAK on 17/01/2024.
//

import Foundation

struct City: Identifiable {
    
    //Identifiant unique de la ville
    var id: UUID
    
    //Informations principales de la ville
    var country: String
    var name : String
    var imageName: String
    var description: String
    
    //Données de map de la ville
    var longitude : Double
    var latitude : Double
    
    /*
     Constructeur PAYS + NOM + IMAGE + DESCRIPTION + POSITION GPS
     */
    init(country: String, name: String, imageName: String, description: String, latitude: Double, longitude: Double) {
        self.id = UUID()
        self.country = country
        self.name = name
        self.imageName = imageName
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
    }
    
    /*
     Constructeur PAYS + NOM + IMAGE + DESCRIPTION
     */
    init(country: String, name: String, imageName: String, description: String) {
        self.init(country: country, name: name, imageName: imageName, description: description, latitude: Double(0), longitude: Double(0))
    }
    
    /*
     Constructeur PAYS + NOM + DESCRIPTION
     */
    init(country: String, name: String, description: String){
        self.init(country: country, name: name, imageName: "noimage", description: description)
    }
    
    /*
     Constructeur PAYS + NOM
     */
    init(country: String, name: String) {
        self.init(country: country, name: name, imageName: "noimage", description: "", latitude: Double(0), longitude: Double(0))
    }
    
    
    
    
}
