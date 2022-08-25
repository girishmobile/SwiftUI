//
//  ContentView.swift
//  test10
//
//  Created by Girish Chauhan on 08/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            //Map
            MapView().frame(height: 300).edgesIgnoringSafeArea(.top)
            //Image
            CircleImage().offset(y: -130).padding(.bottom, -130)
            //Textview
            VStack(alignment: .leading){
                Text("Hello World")
                    .font(.title)
                HStack{
                    Text("Jousha Tree National Park").font(.subheadline)
                    Spacer()
                    Text("California")
                }
                HStack{
                    Image(systemName: "folder.badge.plus")
                    Image(systemName: "heart.circle.fill")
                    Image(systemName: "alarm")
                }.padding()
                    .symbolRenderingMode(.multicolor)
                    .font(.largeTitle)
                Label("Favorite Books", systemImage: "books.vertical")
                    .labelStyle(.titleAndIcon)
                    .font(.headline)
            }.padding()
            //Spacer
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
