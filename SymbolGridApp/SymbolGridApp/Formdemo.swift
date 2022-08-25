//
//  Formdemo.swift
//  SymbolGridApp
//
//  Created by Girish Chauhan on 18/08/22.
//

import SwiftUI

struct Formdemo: View {
    var body: some View {
        NavigationView{
            Form{
                Section {
                      Text("Hello 1")
                      Text("Hello 2")
                      Text("Hello 3")
                      Text("Hello 4")
                      Text("Hello 5")
                      Text("Hello 6")
                }
                Section {
                      Text("Hello 7")
                      Text("Hello 8")
                      Text("Hello 9")
                      Text("Hello 10")
                      Text("Hello 11")
                      Text("Hello 12")
                }

            }
            .navigationBarTitle("SwiftUI", displayMode: .inline)
        }
        
        
    }
}
struct Formdemo_Previews: PreviewProvider {
    static var previews: some View {
        Formdemo()
    }
}
