//
//  HomeList.swift
//  DesignCode
//
//  Created by Mithun x on 7/13/19.
//  Copyright © 2019 Mithun. All rights reserved.
//

import SwiftUI

struct card1: View {

   var courses = coursesData
   @State var showContent = false

   var body: some View {
     
    


            ScrollView(.horizontal, showsIndicators: false) {
               HStack(spacing: 30.0) {
                  ForEach(courses) { item in
                     Button(action: { self.showContent.toggle() }) {
                        GeometryReader { geometry in
                           CourseView(title: item.title,
                                      image: item.image,
                                      color: item.color,
                                      shadowColor: item.shadowColor)
                              .rotation3DEffect(Angle(degrees:
                                 Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                            
                              .fullScreenCover(isPresented: self.$showContent) { ContentView()
                            
                                                                 }
                        }
                        .frame(width: 246, height: 246)
                     }
                  }
                
               }
               .padding(.leading, 30)
               .padding(.top, 30)
               .padding(.bottom, 70)
               Spacer()
            }
        

  
   }
}

#if DEBUG
struct card1_Previews: PreviewProvider {
   static var previews: some View {
      card1()
   }
}
#endif

struct CourseView: View {

   var title = "Shamma's Device"
   var image = ""
   var color = Color("background3")
   var shadowColor = Color("backgroundShadow3")

   var body: some View {
      return VStack(alignment: .leading) {
         Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(30)
            .lineLimit(4)

         Spacer()

         Image(image)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 246, height: 150)
            .padding(.bottom, 30)
      }
      .background(color)
      .cornerRadius(30)
      .frame(width: 246, height: 246)
      .shadow(color: shadowColor, radius: 20, x: 0, y: 20)
   }
}

struct Course: Identifiable {
   var id = UUID()
   var title: String
   var image: String
   var color: Color
   var shadowColor: Color
}

let coursesData = [
   Course(title: "Shamma's Device",
          image: "",
          color: Color("background3"),
          shadowColor: Color("backgroundShadow3")),
//   Course(title: "Design and animate your UI",
//          image: "Illustration2",
//          color: Color("background4"),
//          shadowColor: Color("backgroundShadow4")),
//   Course(title: "Swift UI Advanced",
//          image: "Illustration3",
//          color: Color("background7"),
//          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
//   Course(title: "Framer Playground",
//          image: "Illustration4",
//          color: Color("background8"),
//          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
//   Course(title: "Flutter for Designers",
//          image: "Illustration5",
//          color: Color("background9"),
//          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
]
