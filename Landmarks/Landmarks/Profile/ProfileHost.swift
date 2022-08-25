//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Girish Chauhan on 02/08/22.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
            
    var body: some View {
        
        VStack{
            ProfileSummary(profile: draftProfile)
        }
        
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
