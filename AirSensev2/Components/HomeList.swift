//
//  HomeList.swift
//  AirSense
//
//  Created by areeba shahid on 26/03/2023.
//

import SwiftUI


struct HomeList: View {

   var courses = coursesData
    var courses2 = coursesData2
   @State var showContent = false

//    func greetingLogic() -> Text {
//      let hour = Calendar.current.component(.hour, from: Date())
//
//      let NEW_DAY = 0
//      let NOON = 12
//      let SUNSET = 18
//      let MIDNIGHT = 24
//
//      var greetingText = "Hello" // Default greeting text
//      switch hour {
//      case NEW_DAY..<NOON:
//          greetingText = "Good Morning"
//      case NOON..<SUNSET:
//          greetingText = "Good Afternoon"
//      case SUNSET..<MIDNIGHT:
//          greetingText = "Good Evening"
//      default:
//          _ = "Hello"
//      }
//
//      return greetingText
//    }

   var body: some View {

      ScrollView {
         VStack {
            HStack {
               VStack(alignment: .leading) {
                   Text("Good Morning")

                      .foregroundColor(.gray)



                  Text("Shamma")
                     .font(.largeTitle)
                     .fontWeight(.heavy)

                   Text(Date.now, format: .dateTime.day().month().year())
                     .foregroundColor(.gray)
               }
               Spacer()
            }
            .padding(.leading, 60.0)
             Spacer()
             Spacer()
             Spacer()

             VStack{
                 Text("Discover")
                     //.foregroundColor(.black)
                     .font(.title)
                     .fontWeight(.semibold)
                     .padding(.leading, -154.55)


             }


             ScrollView(.horizontal, showsIndicators: false) {
                 //NavigationStack {
                 
                     HStack(spacing: 5.0) {
                        card1()
                        card2()
                     }
                     .padding(.leading, 30)
                     .padding(.top, 5)
                     .padding(.bottom, 3)
                     Spacer()
                     //}
//                 }

             }
            CertificateRow()
         }
         .padding(.top, 78)
      }
   }
}

#if DEBUG
struct HomeList_Previews: PreviewProvider {
   static var previews: some View {
      HomeList()
   }
}
#endif



