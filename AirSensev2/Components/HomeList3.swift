////
////  HomeList.swift
////  AirSense
////
////  Created by areeba shahid on 26/03/2023.
////
//
//import SwiftUI
//
//
//struct HomeList3: View {
//
//   var courses = coursesData
//    var courses2 = coursesData2
//   @State var showContent = false
//
//
//
//   var body: some View {
//
//      ScrollView {
//         VStack {
//            HStack {
//               VStack(alignment: .leading) {
//                   Text("Good Morning")
//
//                      .foregroundColor(.gray)
//
//
//
//                  Text("Shamma")
//                     .font(.largeTitle)
//                     .fontWeight(.heavy)
//
//                   Text(Date.now, format: .dateTime.day().month().year())
//                     .foregroundColor(.gray)
//               }
//               Spacer()
//            }
//            .padding(.leading, 60.0)
//             Spacer()
//             Spacer()
//             Spacer()
//
//             VStack{
//                 Text("Discover")
//                     //.foregroundColor(.black)
//                     .font(.title)
//                     .fontWeight(.semibold)
//                     .padding(.leading, -154.55)
//
//
//             }
//
//
//             ScrollView(.horizontal, showsIndicators: false) {
//                 //NavigationStack {
//                 HStack(spacing: 30.0){
//
//
//                             card1()
//                            card2()
//
//                     }
//                     .padding(.leading, 30)
//                     .padding(.top, 30)
//                     .padding(.bottom, 70)
//                     Spacer()
//                     //}
////                 }
//
//             }
//            CertificateRow()
//         }
//         .padding(.top, 78)
//      }
//   }
//}
//
//#if DEBUG
//struct HomeList3_Previews: PreviewProvider {
//   static var previews: some View {
//      HomeList3()
//   }
//}
//#endif
//
//
//
