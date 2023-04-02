//
//  AboutView.swift
//  AirSensev2
//
//  Created by areeba shahid on 02/04/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        ZStack{
            Color.white
                .ignoresSafeArea()
        
        VStack {
            
//
//
//            MapView()
//                .edgesIgnoringSafeArea(.top)
//                .frame(height: 300)
//
//                .overlay {
//                    // MARK: Bottom Sheet Separator
//                    Divider()
//                        .blendMode(.overlay)
//                        .background(Color.bottomSheetBorderTop)
//                        .frame(maxHeight: .infinity, alignment: .top)
//                        .clipShape(RoundedRectangle(cornerRadius: 44))
//
//                }
//                .overlay {
//                    // MARK: Drag Indicator
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(.black.opacity(0.3))
//                        .frame(width: 48, height: 5)
//                        .frame(height: 20)
//                        .frame(maxHeight: .infinity, alignment: .top)
//                        .ignoresSafeArea()
//                        .padding(.vertical, 10)
//                }
//
            AvatarView()
                .offset(x: 0, y: 1)
                .padding(.bottom, -50)

            VStack(alignment: .center) {
                Text("Change Your Avatar")
                    .font(.title3)
                Text("Shamma Al Shamsi")
                    .font(.title)
                
                HStack(alignment: .top) {
                    Text("Jumeirah 2")
                        .font(.subheadline)
                    Spacer()
                    Text("Dubai, UAE")
                        .font(.subheadline)
                }.padding(.top, 10)
            }
            .padding()

            Spacer()
            
            
        }
    }
}
        }

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
