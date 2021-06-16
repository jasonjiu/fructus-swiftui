//
//  SettingView.swift
//  fructus-swiftui
//
//  Created by Jason Prosia on 04/06/21.
//

import SwiftUI

struct SettingView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 20, content: {
                    //MARK: - SECTION 1
                    GroupBox(label:
                                SettingLabelView(labelText: "fructus", labelImage: "info.circle"), content: {
                                    Divider().padding(.vertical, 4)
                                    HStack(alignment: .center, spacing: 10, content: {
                                        Image("logo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                            .cornerRadius(9)
                                        
                                        Text("Most Fruits are naturally low in fat, sodium, calories. none have colesterol. fruits are sources of many esential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                            .font(.footnote)
                                    })
                                })
                    
                    //MARK: - SECTION 2
                    GroupBox(label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush"),
                             content: {
                                Divider().padding(.vertical, 4)
                                Text("If you wish, you can restart the application by toogle the button")
                                    .padding(.vertical, 8)
                                    .frame(minHeight: 60)
                                    .layoutPriority(1)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                
                                Toggle(isOn: $isOnboarding, label: {
                                    if isOnboarding {
                                        Text("Restarted".uppercased())
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.green)
                                    } else {
                                        Text("Restart".uppercased())
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.secondary)
                                    }
                                })
                                .padding()
                                .background(Color(UIColor.tertiarySystemBackground).clipShape(
                                    RoundedRectangle(
                                        cornerRadius: 8, style: .continuous)
                                ))
                             })
                    
                    
                    //MARK: - SECTION 3
                    GroupBox(label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone"),
                             content: {
                                SettingRowView(titleLabel: "Developer", titleContent: "Jason Ang")
                                SettingRowView(titleLabel: "Compability", titleContent: "iOS 14")
                                SettingRowView(titleLabel: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                                SettingRowView(titleLabel: "Github", linkLabel: "Jasonjiu", linkDestination: "google.com")
                                SettingRowView(titleLabel: "SwiftUI", titleContent: "2.0")
                                SettingRowView(titleLabel: "Version", titleContent: "1.0")
                             })
                    
                })//VSTACK
                .navigationBarTitle(Text("Setting"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
                .padding()
            })//SCROLL VIEW
        }//NAV VIEW
    }
}


//MARK: - PREVIEW
struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
    }
}
