//
//  NewDogView.swift
//  FirebaseApp
//
//  Created by Levan Gorjeladze on 03.12.22.
//

import SwiftUI

struct NewDogView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newDog = ""
    
    var body: some View {
        VStack{
            TextField("Dog" , text: $newDog)
            
            
            Button{
                //add dog
                dataManager.AddDog(dogBreed: newDog)
            }label: {
                Text("Save")
            }
        }
        .padding()
    }
}

struct NewDogView_Previews: PreviewProvider {
    static var previews: some View {
        NewDogView()
    }
}
