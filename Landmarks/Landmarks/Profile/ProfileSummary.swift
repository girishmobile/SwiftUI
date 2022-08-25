//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Girish Chauhan on 02/08/22.
//
import SwiftUI
struct ProfileSummary: View {
    var profile: Profile
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 10){
                Text(profile.username)
                    .bold()
                    .font(.title)
                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off" )")
                Text("Seasonal Photo: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date:") + Text(profile.goalDate, style: .date)
                Text("Chauhan Girish")
            }
        }
    }
}
struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
