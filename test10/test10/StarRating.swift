//
//  StarRating.swift
//  test10
//
//  Created by Girish Chauhan on 14/07/22.
//

import SwiftUI

struct StarRating: View {
   
    @State var rating : Int
    private let maxRating = 5
    
    var body: some View {
        HStack{
            ForEach(1..<maxRating + 1, id:\.self )  { value in
                Image(systemName: "star")
                    .symbolVariant(value <= rating ? .fill : .none)
                    .foregroundColor(.accentColor)
                    .onTapGesture {
                        if value != rating {
                            rating = value
                        }
                        else{
                            rating = 0
                        }
                    }
                
            }
        }
    }
}

struct StarRating_Previews: PreviewProvider {
    static var previews: some View {
        StarRating(rating: (4))
    }
}
//daksahdkahkjdhakhd
