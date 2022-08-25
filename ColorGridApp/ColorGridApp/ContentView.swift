//
//  ContentView.swift
//  ColorGridApp
//
//  Created by Girish Chauhan on 17/08/22.
//

import SwiftUI

struct ContentView: View {
    let columnLayout = Array(repeating: GridItem(), count: 3)
    @State private var selectedColor = Color.gray
    let allColors: [Color] = [
        .pink,
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .cyan,
        .blue,
        .indigo,
        .purple,
        .brown,
        .gray,
        .black
    ]
    
    var body: some View {
        VStack{
            Text("selected Color")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(selectedColor)
                .padding(10)
            ScrollView{
                LazyVGrid(columns: columnLayout){
                    
                    ForEach(allColors, id: \.description){ color in
                        
                        Button{
                            selectedColor = color
                            print("color",color)
                        } label: {
                            RoundedRectangle(cornerRadius: 4)
                                .aspectRatio(1.0, contentMode: .fit)
                                .foregroundColor(color)
                            
                        }
                        .buttonStyle(.plain)
                        
                    }
                    
                }
            }
        }
        .padding(10)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
