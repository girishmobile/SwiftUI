//
//  NavigationDemo.swift
//  Landmarks
//
//  Created by Girish Chauhan on 18/07/22.
//

import SwiftUI
class User:ObservableObject{
    @Published var score = 0
}
struct ChangeView:View {
    @EnvironmentObject var user:User
    var body: some View{
        VStack (spacing:30){
            Text("Score \(user.score)")
            Button("Increase"){
                self.user.score += 1
                
            }
        }
    }
}
struct ResultView :View{
    var choice:String
    @EnvironmentObject var user:User 
    var body: some View{
        VStack(spacing:20){
            Text("You Chose \(choice)")
            Text("Score:\(user.score)")
            Button("Increase"){
                self.user.score += 1
            }
        }
    }
}
struct NavigationDemo: View {
    
    @State private var score = 0
    @State private var fullScreen = false
    var body: some View {
        NavigationView{
           Text("Primary")
                .navigationTitle("Primary")
            Text("Secondary")
        }
        .navigationViewStyle(.stack)
        
    }
}
struct NavigationDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDemo()
    }
}

/**
 Text("you re going to flip a coin - do you want to ")
 NavigationLink(destination: ResultView(choice: "Heads")){
     Text("Choose Heads")
 }
 NavigationLink(destination: ResultView(choice: "Tails")){
     Text("Choose Tails")
 }
 
 Button("Toggle Full Screen "){
     self.fullScreen.toggle()
 }
 .navigationTitle("Full Screen")
 .navigationBarHidden(fullScreen)
 
 Text(" Left right button on navigation")
     .navigationTitle("Navigation")
     .navigationBarItems(
         leading:
             Button("Subtract"){
                 self.score -= 1
             },
         trailing:
             HStack{
                 Button(" Minus 1"){
                     self.score -= 1
                 }
                 Button("Add 1"){
                     self.score += 1
                 }
             }
             
     )
 
 struct NavigationDemo: View {
     
     @State private var isShowingDetailView = false
     @State private var selection:String? = nil
     @ObservedObject var user = User()
     
     var body: some View {
         NavigationView{
             VStack(spacing:30){
                 Text("Hello World")
                 NavigationLink(destination: Text("Detail view"), isActive: $isShowingDetailView) {EmptyView()}
                 NavigationLink(destination: Text("Second View"), tag: "Second", selection: $selection){EmptyView()}
                 Button("Tap to show detail"){

                     self.isShowingDetailView = true
                 }
                 Button("Tap to show Second"){

                     self.selection = "Second"
                 }
                 
                 Text("Score: \(user.score)")
                 NavigationLink(destination: ChangeView()){
                     Text("Show score view")
                 }
             }
             .navigationTitle("Navigation")
         }
         .environmentObject(user)
     }
 }
 */
