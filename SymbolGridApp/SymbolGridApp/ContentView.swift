//
//  ContentView.swift
//  SymbolGridApp
//
//  Created by Girish Chauhan on 18/08/22.
//
import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 16){
            Text("Hello World")
                .font(.title)
                Spacer()
            Text("Second line")
            }
            HStack(alignment: .bottom, spacing: 16){
                Text("Hello World")
                    .font(.title)
                    Spacer()
                Text("Second line")
            }
            .padding()
            .frame(width: 320)
            VStack{
                Text("Hello world")
                    .font(.title)
                Text("Glad to meet you.")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

