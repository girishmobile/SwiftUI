//
//  StoryView.swift
//  AbouutMe
//
//  Created by Girish Chauhan on 04/08/22.
//

import SwiftUI
struct StoryView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("My Story")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                ScrollView{
                    Text(information.story)
                        .font(.body)
                        .padding()
                }
            }
            .padding([.top, .bottom],50)
            .navigationBarTitleDisplayMode( .inline)
            .toolbar {
                ToolbarItem(placement: .principal){
                    HStack{
                        Image(systemName: "sun.min.fill")
                        Text("Title").font(.headline)
                    }
                }
            }
        }
       
    }
}
struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
