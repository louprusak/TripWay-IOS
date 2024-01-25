//
//  DetailView.swift
//  TripWay IOS Playground
//
//  Created by Loup RUSAK on 09/06/2023.
//

import SwiftUI

/*
 Vue Pop-up de détail de la ville
 */
struct DetailSheet: View {
    @Environment(\.dismiss) private var dismiss

    let imageName: String
    let cityName: String
    let cityDescription : String
    
    var body: some View {
        
        //Barre des menus de la vue
        HStack{
            Button("< Back") {
                // Cancel saving and dismiss.
                dismiss()
            }
            Spacer()
        }.padding([.horizontal, .top],20)
        
        //Contenu de la vue
        VStack{
            Text(cityName).font(.largeTitle)
            ScrollView{
                if(imageName != "noimage"){
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(30)
                        .padding()
                }
                Text(cityDescription)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}

#Preview {
    DetailSheet(imageName: "noimage", cityName: "Ville", cityDescription: "Description de la ville. BLABLABLABLABLABBLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLA")
}
