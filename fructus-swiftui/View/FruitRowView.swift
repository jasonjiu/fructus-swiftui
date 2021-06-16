//
//  FruitRowView.swift
//  fructus-swiftui
//
//  Created by Jason Prosia on 04/06/21.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - PROPERTIES
    var fruits: FruitModel
    //MARK: - BODY
    var body: some View {
        HStack{
            Image(fruits.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(fruits.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruits.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }) // VSTACK
        } // HSTACK
    }
}

//MARK: - PREVIEW
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruits: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
