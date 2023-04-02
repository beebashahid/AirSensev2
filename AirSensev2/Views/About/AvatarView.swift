//
//  AvatarView.swift
//  AirSensev2
//
//  Created by areeba shahid on 02/04/2023.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        Image("5")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct AvatarVieew_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView()
    }
}
