//
//  StatusView.swift
//  AirSensev2
//
//  Created by areeba shahid on 03/04/2023.
//

import SwiftUI
import Firebase

struct StatusView: View {
    var body: some View {
        HView()
//        ProgressBar()
    }
}

struct HView: View {
    var body: some View {
        ZStack {
            Color("White")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack{
                    Text("History")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Black"))
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "arrow.clockwise")
                            .font(.title)
                            .foregroundColor(Color("Black"))
                        
                    }
                }
                
                Spacer()
                
                ZStack{
                    
                    ProgressBar(height: 300, to: 0.3, color: Color("EF3333"))
                    
                    ProgressBar(height: 230, to: 0.6, color: Color("F9CF63"))
                    
                }
                
                HStack (spacing: 20){
                    HStack{
                        
                        Image("1")
                            .resizable()
                            .frame(width: 55, height: 55)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("PM 2.5")
                                .fontWeight(.bold)
                                .foregroundColor(Color("EF3333"))
                            
                            Text("12")
                                .foregroundColor(Color("Black"))
                        }
                    }
                    
                    HStack{
                        
                        Image("2")
                            .resizable()
                            .frame(width: 55, height: 55)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Elevation")
                                .fontWeight(.bold)
                                .foregroundColor(Color("F9CF63"))
                            
                            Text("100m")
                                .foregroundColor(Color("Black"))
                        }
                    }            }
                .padding(.top, 45)
                
                HStack (spacing: 20){
                    HStack{
                        
                        Image("1")
                            .resizable()
                            .frame(width: 55, height: 55)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Temperature")
                                .fontWeight(.bold)
                                .foregroundColor(Color("FF8B49"))
                            
                            Text("35°")
                                .foregroundColor(Color("Black"))
                        }
                    }
                    
                    .offset(x: -20)
                    
                    HStack{
                        
                        Image("2")
                            .resizable()
                            .frame(width: 55, height: 55)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Location")
                                .fontWeight(.bold)
                                .foregroundColor(Color("824EF0"))
                            
                            Text("Dubai")
                                .foregroundColor(Color("Black"))
                        }
                    } .offset(x: 5)
                    
                } .padding(.top, 20)
                
                
                Spacer ()
            } .padding()
        }
    }
}

struct ProgressBar :  View {
    var height: CGFloat
    var to: CGFloat
    var color: Color
    
    var body : some View {
        ZStack{
            Circle()
                .trim(from: 0, to: 1)
                .stroke(Color.black.opacity(0.25), style: StrokeStyle(lineWidth: 30, lineCap: .round))
                .frame(height: height)
            
            Circle()
                .trim(from: 0, to: to)
                .stroke(color, style: StrokeStyle(lineWidth: 30, lineCap: .round))
                .frame(height: height)
        }
        .rotationEffect(.init(degrees: 270))
    }
}

class Host : UIHostingController<StatusView> {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}


//struct Datas : {
//    var steps :
//
//}
