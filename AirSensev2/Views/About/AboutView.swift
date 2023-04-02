//
//  AboutView.swift
//  AirSensev2
//
//  Created by areeba shahid on 02/04/2023.
//

import SwiftUI

//let bg = Color("18171C")
struct AboutView: View {
    
    var shadowColor = Color("background")
    var body: some View {
    
        
        ZStack{
//            Color.white
        Image("Frame 88")
                .resizable()
                .ignoresSafeArea()
        
        VStack {
            
            AvatarView()
                .offset(x: 0, y: -50)
                .padding(.bottom, -140)

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
                    .padding(.bottom, 50)
                
            }
            .padding()
            .colorInvert()

            Spacer()
            
            VStack (){
                
                Text("Information")
                    .font(.title3)
                    .colorInvert()
                  
             .offset(x: -119, y: -360)
            
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.black)
                        .opacity(0.2)
                        .frame(width: 336, height: 138)
                        .padding(.top, -350)
         
                    
                    VStack {
                                Text("Email")
                            .offset(x: -115)
                        
                                Divider()
                            .frame(width: 280)
                        
                                Text("Phone Number")
                            .offset(x: -80)
                        Divider()
                            .frame(width: 280)
                        
                        Text("Probe ID")
                            .offset(x: -103)
                       
                        
                        
                    } .colorInvert()
                        .padding(.top, -335)
                        
                    
                }
            }
        }
    }
    }
        }

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
//            .preferredColorScheme(.dark)
    }
}
