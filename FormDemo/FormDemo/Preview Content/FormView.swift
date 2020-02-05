//
//  FormView.swift
//  FormDemo
//
//  Created by Besta, Balaji (623-Extern) on 05/02/20.
//  Copyright © 2020 Balaji Besta. All rights reserved.
//

import SwiftUI

//struct Hero: Identifiable {
//  let id: UUID = UUID()
//  let name: String
//}

struct FormView: View {
//    let heroList = [
//      Hero(name: "Iron Man"),
//      Hero(name: "Thor"),
//      Hero(name: "Spider-Man")
//    ]
    var tutors : [Tutor] = []
    var body: some View {
//        List(heroList) { hero iText(hero.name).font(.largeTitle).foregroundColor(.red)
//        }
//        LabelTextField(label: "NAME", placeHolder: "Fill in the restaurant name")
//        LabelTextField(label: "", placeHolder:"")
        NavigationView {
            List(tutors) { tutor in
//                TutorCell(tutor: tutor)
               
                TutorCell(tutor: tutor)
                .contextMenu {
                
                Button(action: {
                    // delete the selected restaurant
                }) {
                    HStack {
                        Text("Delete")
                        Image(systemName: "trash")
                    }
                }
                
                Button(action: {
                    // mark the selected restaurant as favorite
                }) {
                    HStack {
                        Text("Favorite")
                        Image(systemName: "star")
                    }
                    }
                }
                
                }
            .navigationBarTitle(Text("Tutors").foregroundColor(Color.red))
    }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
//        FormView(tutors : TestData)
        FormView(tutors: testData)
    }
}
/*struct TutorCell : View {
    let tutor : Tutor
    var body : some View {
        return NavigationButton(destination : Text(tutor.name)) {
            Image(tutor.imageName).cornerRadius(40)
                VStack(alignment: .leading) {
                        Text(tutor.name)
                    Text(tutor.headline).font(.subheadline).foregroundColor(Color.gray)
            }
        }
    }
}*/



struct TutorCell: View {
    let tutor : Tutor
    var body: some View {
        
        return NavigationLink(destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)){
            Image(tutor.imageName).cornerRadius(40)
            VStack(alignment: .leading) {
                Text(tutor.name)
                Text(tutor.headline).font(.subheadline).foregroundColor(Color.gray)
            }
        }
        }
    }

