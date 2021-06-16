//
//  ContentView.swift
//  fructus-swiftui
//
//  Created by Jason Prosia on 03/06/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    var fruits: [FruitModel] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(
                        destination: FruitDetailView(fruits: item)){
                        FruitRowView(fruits: item)
                            .padding(.vertical, 4)
                    }
                }
            }//LIST VIEW
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isShowingSettings, content: {
                SettingView()
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
