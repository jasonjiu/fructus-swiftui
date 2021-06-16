//
//  SettingRowView.swift
//  fructus-swiftui
//
//  Created by Jason Prosia on 04/06/21.
//

import SwiftUI

struct SettingRowView: View {
    //MARK: - PROPERTIES
    var titleLabel: String
    var titleContent: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)

            HStack{
                Text(titleLabel)
                    .foregroundColor(Color.gray)
                Spacer()
                if titleContent != nil {
                    Text(titleContent!)
                } else if linkLabel != nil && linkDestination != nil{
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }else{
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - PREVIEW
struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(titleLabel: "Developer", titleContent: "Jason Ang")
                .preferredColorScheme(.light)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingRowView(titleLabel: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
