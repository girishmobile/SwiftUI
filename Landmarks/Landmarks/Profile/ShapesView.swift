//
//  ShapesView.swift
//  Landmarks
//
//  Created by Girish Chauhan on 03/08/22.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        VStack{
            Circle()
                .stroke(.orange, style:
                            StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10])
                    )
            RoundedRectangle(cornerRadius: 20)
                .fill(.blue)
                .frame(width: 300, height: 200)
                .shadow(color: .red.opacity(0.3), radius: 10, x: -20, y: -20)
        }
        .padding()
    }
}
struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
