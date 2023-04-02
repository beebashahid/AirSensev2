//
//  TabBar.swift
//  AirSensev2
//
//  Created by areeba shahid on 02/04/2023.
//

import SwiftUI

struct TabBar: View {
   var body: some View {
      TabView {
         Home().tabItem {
            Image("IconHome")
            Text("Home")
         }
         .tag(1)
         ContentView().tabItem {
            Image("IconCards")
            Text("Live")
         }
         .tag(2)
         Settings().tabItem {
            Image("IconSettings")
            Text("Settings - change to community")
         }
         .tag(3)
      }
      .edgesIgnoringSafeArea(.top)
   }
}

#if DEBUG
struct TabBar_Previews: PreviewProvider {
   static var previews: some View {
      TabBar()
//         .environment(\.colorScheme, .dark)
   }
}
#endif
