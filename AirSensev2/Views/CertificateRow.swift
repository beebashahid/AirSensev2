//
//  CertificateRow.swift
//  AirSensev2
//
//  Created by areeba shahid on 02/04/2023.
//

import SwiftUI

struct CertificateRow: View {

   var certificates = certificateData

   var body: some View {
      VStack(alignment: .leading) {
         Text("More Info")
            .font(.system(size: 20))
            .fontWeight(.heavy)
            .padding(.leading, 30)

         ScrollView(.horizontal, showsIndicators: false) {
            VStack(spacing: 30) {
               ForEach(certificates) { item in
                  CertificateView(item: item)
               }
            }
            .padding(20)
            .padding(.leading, 10)
         }
      }
   }
}

#if DEBUG
struct CertificateRow_Previews: PreviewProvider {
   static var previews: some View {
      CertificateRow()
   }
}
#endif


struct CertificateView: View {

   var item = Certificate(title: "Info-1", image: "Certificate1", width: 340, height: 40)

   var body: some View {
      return VStack {
         HStack {
            VStack(alignment: .leading) {
               Text(item.title)
                  .font(.headline)
                  .fontWeight(.bold)
                  .foregroundColor(Color("accent"))
                  .padding(.top)

               Text("Info")
                  .foregroundColor(.white)
            }
            Spacer()

            Image("wind2")
               .resizable()
               .frame(width: 30, height: 30)
         }
         .padding(.horizontal)
         Spacer()

         Image(item.image)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .offset(y: 50)
      }
      .frame(width: CGFloat(item.width), height: CGFloat(item.height))
      .background(Color.black)
      .cornerRadius(10)
      .shadow(radius: 10)
   }
}

struct Certificate: Identifiable {
   var id = UUID()
   var title: String
   var image: String
   var width: Int
   var height: Int
}

let certificateData = [
   Certificate(title: "Info-1", image: "1", width: 370, height: 180),
   Certificate(title: "Info-2", image: "10", width: 370, height: 180),
   Certificate(title: "Info-3", image: "1", width: 370, height: 180),
   Certificate(title: "Info-4", image: "10", width: 370, height: 180)
]
