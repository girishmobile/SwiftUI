//
//  CaptionedPhoto.swift
//  AbouutMe
//
//  Created by Girish Chauhan on 09/08/22.
//

import SwiftUI

struct CaptionedPhoto: View {
    let assetName:String
    let captionText:String
    
    var body: some View {
        ZStack{
            Image(assetName)
                .resizable()
                .scaledToFill()
                .overlay(alignment: .bottom){
                    
                    Caption(text: captionText)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .padding()
        }
    }
}
struct Caption: View
{
    let text:String
    var body: some View{
        Text(text)
            .foregroundColor(.white)
            .padding()
            .background(.black.opacity(0.75),
            in: RoundedRectangle(cornerRadius: 10.0, style: .continuous))
        .padding()
    }
}

struct CaptionedPhoto_Previews: PreviewProvider {
    static let portraitName = "flower"
    static let portraitCaption = "This photo is taller than it is wide."
    
    static var previews: some View {
        CaptionedPhoto(assetName: portraitName, captionText: portraitCaption)
    }
}
//hkhjgjgjgmbmb
