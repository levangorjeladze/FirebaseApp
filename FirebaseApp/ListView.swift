//
//  ListView.swift
//  FirebaseApp
//
//  Created by Levan Gorjeladze on 03.12.22.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var datamanager: DataManager
    @State private var showPopup = false
    
    var body: some View {
        NavigationView{
            List(datamanager.dogs, id: \.id){ dog in
                Text(dog.breed)
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                showPopup.toggle()
            }, label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopup){
                NewDogView()
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
                .environmentObject(DataManager()  )
        }
    }
