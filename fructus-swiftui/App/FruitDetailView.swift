//
//  FruitDetailView.swift
//  fructus-swiftui
//
//  Created by Jason Prosia on 04/06/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruits: FruitModel
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                    //HEADER
                    FruitHeaderView(fruits: fruits)
                    VStack(alignment: .leading, spacing: 20, content: {
                        // TITLE
                        Text(fruits.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruits.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruits: fruits)
                        
                        //SUBHEADLINE
                        Text("Learn More About \(fruits.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        SourceLinkView()
                            .padding(.top, 20)
                            .padding(.bottom, 40)
                    })
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                })
                .navigationBarTitle(fruits.title, displayMode: .inline)
                .navigationBarHidden(true)
            })
            .edgesIgnoringSafeArea(.top)
        }//NAV VIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruits: fruitsData[0])
            .preferredColorScheme(.dark)
    }
}
