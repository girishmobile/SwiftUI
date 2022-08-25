//
//  BackgroundImage.swift
//  test10
//
//  Created by Girish Chauhan on 13/07/22.
//

import SwiftUI

struct BackgroundImage: View {
    let assetName = "turtlerock"
    let captionText = "This photo is wider than it is tall"
    var body: some View {
        Image(assetName)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .overlay(alignment: .bottom){
                Caption(text: captionText)
            }
    }
}
struct Caption :View{
    let text:String
    var body: some View{
        Text(text)
            .padding()
            .background(Color.black).opacity(0.75)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10.0,style: .continuous))
        
    }
    
    
}
struct BackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImage()
    }
}
