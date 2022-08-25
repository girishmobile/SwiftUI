//
//  FunFactsView.swift
//  AbouutMe
//
//  Created by Girish Chauhan on 04/08/22.
//

import SwiftUI

struct FunFactsView: View {
    @State private var funFact = ""
    var body: some View {
        VStack{
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight:400)
            Button("Show Random Facts"){
                
                funFact = information.funFacts.randomElement()!
            }
        }
        .padding()
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
