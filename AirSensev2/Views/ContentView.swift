//
//  ContentView.swift
//  AirSensev2
//
//  Created by areeba shahid on 02/04/2023.
//

import SwiftUI
import BottomSheet
import MapKit



//struct ContentViews: View {
//
////   @State var show = false
////   @State var viewState = CGSize.zero
//
//   var body: some View {
//      ZStack {
//         //BlurView(style: .systemMaterial)
//
//          TitleView()
//             .blur(radius: show ? 20 : 0)
//             .animation(.default)
//
//         ForecastedView()
//           //.blur(radius: show ? 20 : 0)
//            .animation(.default)
//
//            .gesture(
//               DragGesture()
//                  .onChanged { value in
//                     self.viewState = value.translation
//                     self.show = true
//                  }
//                  .onEnded { _ in
//                     self.viewState = CGSize.zero
//                     self.show = false
//                  })
//
//
//
//
//      }
//   }
//}

#if DEBUG

#endif




enum BottomSheetPosition: CGFloat, CaseIterable {
    case top = 0.93 // 702/844
    case middle = 0.25 // 325/844
}

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var bottomSheetPosition: BottomSheetPosition = .middle
    @State var bottomSheetTranslation: CGFloat = BottomSheetPosition.middle.rawValue
    @State var hasDragged: Bool = false
    
    @State var show = false
    @State var viewState = CGSize.zero
    
    
    var bottomSheetTranslationProrated: CGFloat {
        (bottomSheetTranslation - BottomSheetPosition.middle.rawValue) / (BottomSheetPosition.top.rawValue - BottomSheetPosition.middle.rawValue)
    }
    
  
    var body: some View {
        
       
            
        
            NavigationView {
            GeometryReader { geometry in
                let screenHeight = geometry.size.height + geometry.safeAreaInsets.top + geometry.safeAreaInsets.bottom
                let imageOffset = screenHeight + 36
                
                ZStack (alignment: .topLeading){
                    TitleView()
                       .blur(radius: show ? 20 : 0)
                       .animation(.default)
                       .ignoresSafeArea()
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.gray)
                        .font(.headline)
                       // .frame(alignment: .topLeading)
                        .ignoresSafeArea()
                        .background(Color.white.cornerRadius(10))
                        .padding(30)
                        .padding(.vertical, -25)
                       

                })
                    // MARK: Bottom Sheet
                    BottomSheetView(position: $bottomSheetPosition) {
                        //                        Text(bottomSheetTranslationProrated.formatted())
                    } content: {
                        ForecastView(bottomSheetTranslationProrated: bottomSheetTranslationProrated)
                    }
                    
                    .onBottomSheetDrag { translation in
                        bottomSheetTranslation = translation / screenHeight
                        
                        withAnimation(.easeInOut) {
                            if bottomSheetPosition == BottomSheetPosition.top {
                                hasDragged = true
                            } else {
                                hasDragged = false
                            }
                                
                        }
                       
                    }
                    
                    
                }
                
            }
            .navigationBarHidden(true)
        }
    }
    
    
}

struct TitleView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 25.2048, longitude: 55.2708)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
           .preferredColorScheme(.dark)
       
   }
}
