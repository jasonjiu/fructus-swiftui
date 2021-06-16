//
//  FruitHeaderView.swift
//  fructus-swiftui
//
//  Created by Jason Prosia on 04/06/21.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES
    var fruits: FruitModel
    @State private var isAnimatingImage: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .topLeading, endPoint: .bottomLeading)
            
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//ZSTACK
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

//MARK: - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruits: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
