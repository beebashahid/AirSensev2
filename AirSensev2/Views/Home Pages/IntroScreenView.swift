//
//  IntroScreenView.swift
//  AirSensev2
//
//  Created by areeba shahid on 02/04/2023.
//

import SwiftUI

struct IntroScreenView: View {
    
//    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    @State var isHomeRootScreen = false
    @State var scaleAmount: CGFloat = 1
    
    
    var body: some View {
        ZStack {
            Color("")
            
            if isHomeRootScreen {
                Home()
            } else {
                Image("air")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(scaleAmount)
                    .frame(width: 80)
            }
        }
        .ignoresSafeArea()
        .onAppear {
            // Shrink the icon
            withAnimation(.easeOut(duration: 0.5)) {
                scaleAmount = 0.6
            }
            
            // Enlarge the logo
            withAnimation(.easeInOut(duration: 1).delay(0.5)) {
                scaleAmount = 80

            }
            
            // Do somehing after the animation is done
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                
                isHomeRootScreen = true
            }
        }
    }
}
//    var body: some View {
//        ZStack {
//            Color.white
//                .ignoresSafeArea()
//
//            if isActive {
//                TabBar()
//            } else {
//                VStack {
//                    VStack {
//                        Image("air")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 150)
//                        //.font(.system(size: 20))
//                        //  .foregroundColor(.red)
//
//                        Text("")
//                            .font(Font.custom("Montserrat Regular", size: 28))
//                            .foregroundColor(.black.opacity(0.80))
//                    }
//                    .scaleEffect(size)
//                    .opacity(opacity)
//                    .onAppear {
//                        withAnimation(.easeIn(duration: 1.2)) {
//                            self.size = 0.8
//                            self.opacity = 1.00
//                        }
//                    }
//                }
//                .onAppear {
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//                        withAnimation {
//                            self.isActive = true
//                        }
//                    }
//                }
//            }
//        }
//    }
//
//}

struct IntroScreenView_Previews: PreviewProvider {
    static var previews: some View {
        IntroScreenView()
        //.preferredColorScheme(.dark)
        
    }
}
