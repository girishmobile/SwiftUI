//
//  TempView.swift
//  Landmarks
//
//  Created by Girish Chauhan on 02/08/22.
//

import SwiftUI

struct TempView: View {
    @State var username = "girish"
    @State var password = "Admin@123"
    @State var emailAddress = "girish@test.com"
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
            Text("The ultimate customer support tool for any website. Add live support chat widget to your website and start connecting your customer in minutes. Live chat gives you brand a way to engage with the ​customer in real time")
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
        }
        .padding()
        
    }
}
struct TempView_Previews: PreviewProvider {
    static var previews: some View {
        TempView()
    }
}
