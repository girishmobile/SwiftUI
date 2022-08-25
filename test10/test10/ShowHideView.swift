//
//  ShowHideView.swift
//  test10
//
//  Created by Girish Chauhan on 13/07/22.
//

import SwiftUI

struct ShowHideView: View {
    @State private var longerTain = true
    var body: some View {
        HStack{
            
        VStack(alignment: .leading){
            
            Toggle("Long train", isOn: $longerTain)
            Text("Conditional:")
            HStack{
                Image(systemName: "train.side.rear.car")
                if longerTain{
                    Image(systemName: "train.side.middle.car")
                }
                Image(systemName: "train.side.front.car")
            }
            Divider().padding()
            Text("Opacity:")
            HStack{
                Image(systemName: "train.side.rear.car")
                Image(systemName: "train.side.middle.car").opacity(longerTain ? 1 : 0)
                Image(systemName: "train.side.front.car")
            }
            Divider().padding()
            Text("Hiden")
            HStack{
                Image(systemName: "train.side.rear.car")
                Image(systemName: "train.side.middle.car").hidden()
                Image(systemName: "train.side.front.car")
            }
            Divider().padding()
            
        }.padding()
    }
}
}

struct ShowHideView_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideView()
    }
}
