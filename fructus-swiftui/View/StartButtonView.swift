//
//  StartButtonView.swift
//  fructus-swiftui
//
//  Created by Jason Prosia on 03/06/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }){
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    
            }
        } // BUTTON
        .accentColor(Color.white)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
    }
}

//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark ).previewLayout(.sizeThatFits)
    }
}
