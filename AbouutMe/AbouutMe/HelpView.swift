//
//  HelpView.swift
//  AbouutMe
//
//  Created by Girish Chauhan on 09/08/22.
//

import SwiftUI

struct HelpView: View {
     
    @State private var colorChnage =  false
    @State private var sizeChange = false
    @State private var isAnimating = false
    @State private var larger = true
     
    var body: some View {
        
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Image(systemName: "globe")
                .resizable()
                .foregroundColor(.orange)
                .frame(width: 80, height: 80, alignment: .center)
            Label("Favorite books",systemImage: "books.vertical")
            HStack{
                Rectangle()
                    .foregroundColor(.orange)
                Circle()
                    .foregroundColor(.blue)
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .foregroundColor(.green)
                    
            }.aspectRatio(3.0, contentMode: .fit)
            
            VStack{
                Image(systemName: "heart.fill")
                    .font(.system(size: 100))
                    .foregroundColor(colorChnage ? .yellow : .red)
                    .scaleEffect(sizeChange ? 1.5  : 1)
                    .animation(.easeOut(duration:1.5),value: 1)
                    .onTapGesture {
                        self.colorChnage.toggle()
                    }
                    .onLongPressGesture{
                        self.sizeChange.toggle()
                    }
                Circle()
                    .fill(Color.teal)
                    .frame(width: 150, height: 150)
                    .scaleEffect(isAnimating ? 0.5:1.0)
                    .animation(.easeIn(duration: 1).repeatForever(), value: larger)
                    
            }.onAppear{
                larger = false
            }
            
        }

        .padding()
    }
}
struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
//hk
